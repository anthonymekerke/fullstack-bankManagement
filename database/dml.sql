
#password is bcrypt conversion for "easypwd"
INSERT INTO bm_client (lastname, firstname, password, date_adhesion, email, login)
VALUES ("Robert", "Duval", "$2y$10$heC6EGlwm4KMiflX9m/7VuEqLpCLakTLlqwVHblf3Zh1jXCrATju2", '1998-01-23', "robert.duval@inlook.com", "rduval"),
	("Bai", "Ling", "$2y$10$heC6EGlwm4KMiflX9m/7VuEqLpCLakTLlqwVHblf3Zh1jXCrATju2", '2020-01-10', "bai.ling@hub.com", "bling"),
	("Pedro", "Lopez", "$2y$10$heC6EGlwm4KMiflX9m/7VuEqLpCLakTLlqwVHblf3Zh1jXCrATju2", '2020-05-10', "pedro.lopez@cmail.com", "plopez");


INSERT INTO bm_account (iban, label, creation_date, client_id) 
VALUES ("7654 9685 3445 3128", "Compte courant M. Duval", '1998-01-25', 1),
	("7654 4532 9875 1836", "Plan Epargne Logement", '1998-01-25', 1),
	("7654 4879 3665 1431", "Epargne Livret A", '2020-01-11', 2), 
	("7654 7425 9468 6421", "Compte courant Mme Ling", '2020-01-11', 2),
	("7654 3648 4538 1352", "Compte courant M. Lopez", '2020-05-12', 3),
	("7654 9754 3928 7316", "Livret Epargne Populaire", '2020-05-12', 3);

INSERT INTO bm_saving_account (account_id, interest_rate)
VALUES (2, 6.5), (3, 2.0), (6, 3.25);

INSERT INTO bm_current_account(account_id, bank_overdraft)
VALUES (1, 500), (4, 200), (5,200);

#------------------------------------------------------------
# wording start by one of these:
# PRLV SEPA, PAIEMENT (CB | PSC), VIR (_ | INST | SEPA), VRST, (_ | RETRO) F, RETRAIT DAB, IMPAYE - , 
#------------------------------------------------------------

INSERT INTO bm_transaction(wording, payment, withdraw, execution_date, value_date, balance, account_id)
VALUES ("VIR E1CF2A4200EECDF14A4691BBF1BA255A", 800.0, NULL, '1998-01-23', '1998-01-25', 800.0, 1),
	("RETRAIT DAB aa010fbc1d14c795d86ef98c95479d17", NULL, 150.0, '1998-01-26', '1998-01-28', 650.0, 1),
	("PRLV SEPA c7ed8571cddf479d1c24485ef29caede", NULL, 48.0, '1998-01-27', '1998-01-29', 602.0, 1),
	("PAIEMENT CB d9cce882ee690a5c1ce70beff3a78c77", NULL, 57.23, '1998-02-01', '1998-02-4', 544.77, 1),
	("PRLV SEPA 5eb63bbbe01eeed093cb22bb8f5acdc3", NULL, 22.0, '1998-02-04', '1998-02-06', 522.77, 1),
	("PRLV SEPA c52ac4d06245286b33953957be6c6f81", NULL, 230.23, '1998-02-15', '1998-02-18', 292.54, 1),
	("VIR d4a1185", 120.0, NULL, '1998-02-19', '1998-02-19', 412.54, 1),
	("VIR d4a1190", 500.0, NULL, '1998-01-23', '1998-01-25', 500.0, 2),
	("VIR d4a1190", 650.0, NULL, '2020-01-09', '2020-01-11', 650.0, 3),
	("VIR E1CF2A4200EECDF14A4691BBF1BA255A", 1500.0, NULL, '2020-01-09', '2020-01-11', 1500.0, 4),
	("RETRAIT DAB aa010fbc1d14c795d86ef98c95479d17", NULL, 230.0, '2020-01-14', '2020-01-17', 1270.0, 4),
	("PRLV SEPA c7ed8571cddf479d1c24485ef29caede", NULL, 89.0, '2020-01-14', '2020-01-17', 1181.0, 4),
	("PAIEMENT CB d9cce882ee690a5c1ce70beff3a78c77", NULL, 78.65, '2020-01-14', '2020-01-17', 1102.35, 4),
	("PRLV SEPA 5eb63bbbe01eeed093cb22bb8f5acdc3", NULL, 45.0, '2020-02-11', '2020-02-15', 1057.35, 4),
	("PRLV SEPA c52ac4d06245286b33953957be6c6f81", NULL, 230.23, '2020-02-15', '2020-02-18', 827.12, 4),
	("VIR d4a1185", 120.0, NULL, '2020-02-16', '2020-02-19', 947.12, 4),
	("VIR E1CF2A4200EECDF14A4691BBF1BA255A", 1000.0, NULL, '2020-05-10', '2020-05-12', 1000.0, 5),
	("RETRAIT DAB aa010fbc1d14c795d86ef98c95479d17", NULL, 200.0, '2020-05-14', '2020-05-17', 800.0, 5),
	("PRLV SEPA c7ed8571cddf479d1c24485ef29caede", NULL, 89.0, '2020-05-14', '2020-05-17', 711.0, 5),
	("PAIEMENT CB d9cce882ee690a5c1ce70beff3a78c77", NULL, 78.0, '2020-05-14', '2020-05-17', 633.0, 5),
	("PRLV SEPA 5eb63bbbe01eeed093cb22bb8f5acdc3", NULL, 45.0, '2020-05-23', '2020-05-26', 588.0, 5),
	("PRLV SEPA c52ac4d06245286b33953957be6c6f81", NULL, 300, '2020-05-27', '2020-05-30', 288.0, 5),
	("VIR d4a1185", 1000.0, NULL, '2020-05-29', '2020-06-01', 1288.0, 5),
	("VIR d4a1190", 200.0, NULL, '2020-05-07', '2020-05-12', 200.0, 6);








