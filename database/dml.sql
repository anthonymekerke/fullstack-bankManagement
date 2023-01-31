
#password is bcrypt conversion for "easypwd"
INSERT INTO bm_client (lastname, firstname, password, date_adhesion, email, login)
VALUES ("Robert", "Duval", "$2y$10$heC6EGlwm4KMiflX9m/7VuEqLpCLakTLlqwVHblf3Zh1jXCrATju2", '2022-10-25', "robert.duval@inlook.com", "rduval"),
	("Bai", "Ling", "$2y$10$heC6EGlwm4KMiflX9m/7VuEqLpCLakTLlqwVHblf3Zh1jXCrATju2", '2022-10-28', "bai.ling@hub.com", "bling"),
	("Pedro", "Lopez", "$2y$10$heC6EGlwm4KMiflX9m/7VuEqLpCLakTLlqwVHblf3Zh1jXCrATju2", '2022-11-03', "pedro.lopez@cmail.com", "plopez");


INSERT INTO bm_account (iban, label, creation_date, client_id) 
VALUES ("7654 9685 3445 3128", "Contrat Personnel 1225", '2022-10-25', 1),
	("7654 4532 9875 1836", "Plan Epargne Logement", '2022-10-25', 1),
	("7654 4879 3665 1431", "Epargne Livret A", '2022-10-28', 2), 
	("7654 7425 9468 6421", "Contrat Personnel 5487", '2022-10-28', 2),
	("7654 3648 4538 1352", "Contrat Personnel 3265", '2022-11-03', 3),
	("7654 9754 3928 7316", "Livret Epargne Populaire", '2022-11-03', 3),
	("7654 5631 4251 5842", "Plan Epargne Logement", '2022-11-03', 3);

INSERT INTO bm_saving_account (account_id, interest_rate)
VALUES (2, 6.5), (3, 2.0), (6, 3.25), (7,6.5);

INSERT INTO bm_current_account(account_id, bank_overdraft)
VALUES (1, 500), (4, 200), (5,200);

INSERT INTO bm_transaction(wording, payment, withdraw, execution_date, value_date, balance, account_id)
VALUES ("VIR E1CF2A4200EECDF14A4691BBF1BA255A", 800.0, NULL, '2022-10-25', '2022-10-25', 800.0, 1),
	("RETRAIT DAB aa010fbc1d14c795d86ef98c95479d17", NULL, 150.0, '2022-10-26', '2022-10-28', 650.0, 1),
	("PRLV SEPA c7ed8571cddf479d1c24485ef29caede", NULL, 48.0, '2022-10-26', '2022-10-28', 602.0, 1),
	("PAIEMENT CB d9cce882ee690a5c1ce70beff3a78c77", NULL, 57.23, '2022-10-30', '2022-11-01', 544.77, 1),
	("PRLV SEPA 5eb63bbbe01eeed093cb22bb8f5acdc3", NULL, 22.0, '2022-11-02', '2022-11-04', 522.77, 1),
	("PRLV SEPA c52ac4d06245286b33953957be6c6f81", NULL, 230.23, '2022-11-04', '2022-11-05', 292.54, 1),
	("VIR d4a1185", 120.0, NULL, '2022-10-25', '2022-10-27', 412.54, 1),
	("VIR op4a1190", 500.0, NULL, '2022-10-28', '2022-10-30', 500.0, 2),
	("VIR d4a1190", 650.0, NULL, '2022-10-28', '2022-10-30', 650.0, 3),
	("VIR E1CF2A4200EECDF14A4691BBF1BA255A", 1500.0, NULL, '2022-11-02', '2022-11-04', 1500.0, 4),
	("RETRAIT DAB aa010fbc1d14c795d86ef98c95479d17", NULL, 230.0, '2022-11-03', '2022-11-05', 1270.0, 4),
	("PRLV SEPA c7ed8571cddf479d1c24485ef29caede", NULL, 89.0, '2022-11-03', '2022-11-05', 1181.0, 4),
	("PAIEMENT CB d9cce882ee690a5c1ce70beff3a78c77", NULL, 78.65, '2022-11-05', '2022-11-07', 1102.35, 4),
	("PRLV SEPA 5eb63bbbe01eeed093cb22bb8f5acdc3", NULL, 45.0, '2022-11-06', '2022-11-08', 1057.35, 4),
	("PRLV SEPA c52ac4d06245286b33953957be6c6f81", NULL, 230.23, '2022-11-07', '2022-11-09', 827.12, 4),
	("VIR d4a1185", 120.0, NULL, '2022-11-10', '2022-11-12', 947.12, 4),
	("VIR E1CF2A4200EECDF14A4691BBF1BA255A", 1000.0, NULL, '2022-11-03', '2022-11-05', 1000.0, 5),
	("RETRAIT DAB aa010fbc1d14c795d86ef98c95479d17", NULL, 200.0, '2022-11-04', '2022-11-05', 800.0, 5),
	("PRLV SEPA c7ed8571cddf479d1c24485ef29caede", NULL, 89.0, '2022-11-05', '2022-11-07', 711.0, 5),
	("PAIEMENT CB d9cce882ee690a5c1ce70beff3a78c77", NULL, 78.0, '2022-11-07', '2022-11-10', 633.0, 5),
	("PRLV SEPA 5eb63bbbe01eeed093cb22bb8f5acdc3", NULL, 45.0, '2022-11-09', '2022-11-12', 588.0, 5),
	("PRLV SEPA c52ac4d06245286b33953957be6c6f81", NULL, 300, '2022-11-11', '2022-11-13', 288.0, 5),
	("VIR d4a1185", 1000.0, NULL, '2022-11-11', '2022-11-13', 1288.0, 5),
	("VIR d4a1190", 200.0, NULL, '2022-11-03', '2022-11-05', 200.0, 6),
	("VIR aopa4520", 400.0, NULL, '2022-11-03', '2022-11-05', 400.0, 7);








