# User Skills Exercise

We have this basic data structure:

![ERD diagram showing Users linked to Skills through UserSkills](docs/erd.png)

Here is what this might look like in the Rails console:

![Rails console output showing Users, associated User Skills, Skills, and a maximum number of years of experience](docs/user_skills.png)

A user's maximum number years of experience is determined by finding the skill with the largest years of experience value.

We would like to show a list of all users and the maximum number of years of experience for each user.

- How might you implement this?
- What are some of the challenges we will face in displaying this list of users?
- What if we want to order these users by maximum years of experience?
