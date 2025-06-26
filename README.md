# Diet-Recommendation-System
This is a **Prolog-based expert system** that recommends personalized diet plans based on a user's health goals, allergies, age group, and food preferences. The system uses a set of predefined logical rules to match user inputs with suitable nutritional strategies.


##  Project Overview

The  system simulates a dietitian's decision-making process by considering:
- **User’s goal** (Stay Healthy, Weight Loss, Gain Weight)
- **Allergy information**
- **Age group**
- **Food preferences**

Based on this data, the system suggests one of several categorized diet plans such as:
- Intermittent Fasting
- Vegetarian
- Ketogenic
- Low Carb
- Vegan
- Calorie Deficit
- Calorie Surplus


##  How It Works

The system interacts with the user through the terminal, asking for:

1. **Target Goal**:
   - `stay_healthy`
   - `weight_loss`
   - `gain_weight`

2. **Allergy Type**:
   - `no_allergies`, `shellfish`, `red_meat`, `poultry`, `lactose`, `gluten`, `wheat`

3. **Age Group**:
   - `child`, `adult`, `elderly`

4. **Food Preference** (one at a time):
   - `vegetables`, `fruit`, `meat`, `fish`, `wholemeal`, `dairy`

The system then uses the predicate `suggest(D)` to output the most suitable diet plan.



## Output Example


