#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: BM_CLIENT
#------------------------------------------------------------

CREATE TABLE bm_client(
        client_id     Int  Auto_increment  NOT NULL ,
        lastname      Varchar (128) NOT NULL ,
        firstname     Varchar (128) NOT NULL ,
        password      Varchar (500) NOT NULL ,
        date_adhesion Datetime NOT NULL ,
        email         Varchar (128) NOT NULL ,
        login         Varchar (32) NOT NULL
	,CONSTRAINT bm_client_ak UNIQUE (email,login)
	,CONSTRAINT bm_client_pk PRIMARY KEY (client_id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: bm_account
#------------------------------------------------------------

CREATE TABLE bm_account(
        account_id    Int  Auto_increment  NOT NULL ,
        iban	      Varchar (32) NOT NULL ,
        label         Varchar (255) NOT NULL ,
        creation_date Date NOT NULL ,
        client_id     Int NOT NULL
	,CONSTRAINT bm_account_pk PRIMARY KEY (account_id)
	,CONSTRAINT bm_account_bm_client_fk FOREIGN KEY (client_id) REFERENCES bm_client(client_id) ON DELETE CASCADE
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: bm_saving_account
#------------------------------------------------------------

CREATE TABLE bm_saving_account(
        account_id      Int NOT NULL,
	interest_rate   Float(4,2) NOT NULL
	,CONSTRAINT bm_saving_account_pk PRIMARY KEY (account_id)
	,CONSTRAINT bm_saving_account_bm_account_fk FOREIGN KEY (account_id) REFERENCES bm_account(account_id) ON DELETE CASCADE
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: bm_current_account
#------------------------------------------------------------

CREATE TABLE bm_current_account(
        account_id     Int NOT NULL,
	bank_overdraft Int NOT NULL
	,CONSTRAINT bm_current_account_pk PRIMARY KEY (account_id)
	,CONSTRAINT bm_current_account_bm_account_fk FOREIGN KEY (account_id) REFERENCES bm_account(account_id) ON DELETE CASCADE
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: bm_transaction
#------------------------------------------------------------

CREATE TABLE bm_transaction(
        transaction_id Int  Auto_increment  NOT NULL ,
        wording	       Varchar (200) NOT NULL,
	payment        Float NULL,
	withdraw       Float NULL,
        execution_date Date NOT NULL ,
	value_date     Date NOT NULL,
	balance	       Float NOT NULL,
        account_id     Int NOT NULL
	,CONSTRAINT bm_transaction_pk PRIMARY KEY (transaction_id)
	,CONSTRAINT bm_transaction_bm_account_fk FOREIGN KEY (account_id) REFERENCES bm_account(account_id) ON DELETE CASCADE
)ENGINE=InnoDB;


