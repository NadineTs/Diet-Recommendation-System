suggest(D) :-
 % Prompt the user for input regarding their target
write('What is your target (stay_healthy, weight_loss, gain_weight)? '),read(T),
    
 % Prompt the user for input regarding their allergies
write('Do you have any allergies? (e.g., no_allergies, shellfish, red_meat, poultry, wheat, gluten, lactose)? '),read(A),
    
 % Prompt the user for input regarding their age group
write('What is your age group? (child, adult, or elderly) '), read(AG),
    
 % Prompt the user for input regarding their food preferences   
write('What are your food preferences? (e.g., vegetables, fruit, meat, fish, wholemeal, dairy)? '),read(P),
    
% Call the diet predicate to determine the appropriate diet suggestion based on the user's input
% D: The suggested diet will be unified with this parameter, T:The target, A: Allergies , AG: Age group, P: Food preferences 
diet(D,T,A,AG,P).

% Diet suggestions are defined as clauses in the form of diet(DietName: Description, T, A, AG, P).
% Each clause specifies the conditions under which the diet should be suggested.
% The suggested diet will be unified with the D parameter if the conditions are met.
% The exclamation mark (!) at the end of each clause is used to commit to a specific suggestion once it's found.

%Diet suggestions for the "stay_healthy" target
% Intermittent Fasting diet plan
diet('Intermittent Fasting: Lowering insulin levels, it controls hunger and is recommended for diabetic patients.',T,A,AG,P) :-
T = stay_healthy,
A = no_allergies,
(AG = adult; AG = elderly),
(P = vegetables; P = fruit; P = meat; P = fish; P = wholemeal),!.

 % Vegetarian diet paln
diet('Vegetarian:Eliminating meat and seafood, it offers health benefits like reduced heart disease risk and improved weight management.',T,A,AG,P) :-
T = stay_healthy,
(A = shellfish; A = red_meat; A = poultry),
(AG = child; AG = adult; AG = elderly),
(P = vegetables; P = fruit; P = dairy; P = wholemeal),!.

%Ketogenic diet plan
diet('Ketogenic: High fat, moderate protein, very low carb diet that promotes ketosis for potential weight management and blood sugar control.',T,A,AG,P) :-
T = stay_healthy,
A = wheat,
(AG = child; AG = adult; AG = elderly),
(P = vegetables; P = fruit; P = dairy; P = meat ; P=fish),!.

%Low carb diet plan
diet('Low carb:Reduces carbohydrate intake, emphasizes protein, healthy fats, and non-starchy vegetables for blood sugar management, weight control.',T,A,AG,P) :-
T = stay_healthy,
A = gluten,
( AG = adult; AG = elderly),
(P = vegetables; P = fruit; P = dairy; P = meat ; P=fish), !.

%vegan diet plan
diet('Vegan:Excluding animal-derived products, it focuses on plants for nutrients, minimizes environmental impact.',T,A,AG,P) :-
T = stay_healthy,
( A = lactose; A=shellfish),
AG = adult,
(P = vegetables; P = fruit; P=wholemeal),!.

%Calorie Deficit diet plan
diet('Calorie Deficit: By maintaining a balanced caloric intake, it supports overall health and helps sustain current weight.',T,A,AG,P) :-
T = stay_healthy,
A = no_allergies,
(AG = child; AG = adult; AG = elderly),
(P = vegetables; P = fruit; P = meat; P = fish; P = wholemeal; p = dairy),!.


% Diet suggestions for the "weight_loss" target
% Intermittent Fasting diet plan
diet('Intermittent Fasting: Lowering insulin levels, it controls hunger and is recommended for diabetic patients.',T,A,AG,P) :-
T = weight_loss,
A = no_allergies,
(AG = adult; AG = elderly),
(P = vegetables; P = fruit; P = meat; P = fish; P = wholemeal), !.

 % Vegetarian diet paln
diet('Vegetarian:Eliminating meat and seafood, it offers health benefits like reduced heart disease risk and improved weight management.',T,A,AG,P) :-
T = weight_loss,
(A = shellfish; A = red_meat; A = poultry),
(AG = child; AG = adult; AG = elderly),
(P = vegetables; P = fruit; P = dairy; P = wholemeal),!.

%Ketogenic diet plan
diet('Ketogenic: High fat, moderate protein, very low carb diet that promotes ketosis for potential weight management and blood sugar control.',T,A,AG,P) :-
T = weight_loss,
A = wheat,
(AG = child; AG = adult; AG = elderly),
(P = vegetables; P = fruit; P = dairy; P = meat ; P=fish),!.

%Low carb diet plan
diet('Low carb:Reduces carbohydrate intake, emphasizes protein, healthy fats, and non-starchy vegetables for blood sugar management,weight control.',T,A,AG,P) :-
T = weight_loss,
A = gluten,
( AG = adult; AG = elderly),
(P = vegetables; P = fruit; P = dairy; P = meat ; P=fish),!.

%Vegan diet plan
diet('Vegan:Excluding animal-derived products, it focuses on plants for nutrients, minimizes environmental impact.',T,A,AG,P) :-
T = weight_loss,
( A = lactose; A=shellfish),
AG = adult,
(P = vegetables; P = fruit; P=wholemeal),!.

%Calorie Deficit diet plan
diet('Calorie Deficit:Scientific way to lose body fat by reducing caloric intake, leading to weight loss.',T,A,AG,P) :-
T = weight_loss,
A = no_allergies,
(AG = child; AG = adult; AG = elderly),
(P = vegetables; P = fruit; P = meat; P = fish; P = wholemeal; p = dairy),!.

% Diet suggestion for the "gain_weight" target
%Calorie surplus diet plan
diet('Calorie surplus: Increasing caloric intake, it stores extra calories as fat, recommended for underweight individuals or muscle growth.',T,A,AG,P) :-
T = gain_weight,
A = no_allergies,
(AG = child; AG = adult; AG = elderly),
(P = vegetables; P = fruit; P = meat; P = fish; P = wholemeal; p = dairy),!.





