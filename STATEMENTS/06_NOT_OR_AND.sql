SELECT * FROM users WHERE NOT email LIKE '%gmail.com';
SELECT * FROM users WHERE NOT email = 'diegocopetegrafico@gmail.com';
SELECT * FROM users WHERE NOT email = 'esperanza-2505@hotmail.com' AND age <= 30;
SELECT * FROM users WHERE NOT email = 'esperanza-2505@hotmail.com' OR age <= 30;