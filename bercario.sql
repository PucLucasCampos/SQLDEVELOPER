CREATE TABLE BEBE(
    ID NUMBER PRIMARY KEY,
    NOME VARCHAR2(250) NOT NULL,
    DATA_NASC DATE NOT NULL,
    PESO NUMBER NOT NULL,
    ALTURA NUMBER NOT NULL,
    FK_MAE NUMBER,
    FK_MEDICO NUMBER,
    FOREIGN KEY (FK_MAE) REFERENCES MAE(ID_MAE),
    FOREIGN KEY (FK_MEDICO) REFERENCES MEDICO(CRM)
);

CREATE TABLE MEDICO(
    CRM NUMBER PRIMARY KEY,
    NOME VARCHAR2(250) NOT NULL,
    ESPECIALIDADE VARCHAR2(250)
);

CREATE TABLE MAE(
    ID_MAE NUMBER PRIMARY KEY,
    CPF VARCHAR2(250) NOT NULL,
    NOME VARCHAR2(250) NOT NULL,
    ENDERECO VARCHAR2(250) NOT NULL,
    DATA_NASC DATE NOT NULL
);

CREATE TABLE TELEFONE_MAE(
    ID_MAE NUMBER,
    TELEFONE VARCHAR(250),
    PRIMARY KEY(ID_MAE, TELEFONE),
    FOREIGN KEY (ID_MAE) REFERENCES MAE(ID_MAE)
);

CREATE TABLE TELEFONE_MEDICO(
    CRM NUMBER,
    TELEFONE VARCHAR(250),
    PRIMARY KEY(CRM, TELEFONE),
    FOREIGN KEY (CRM) REFERENCES MEDICO(CRM)
);

INSERT INTO MAE VALUES
(
    1,
    '263.619.09-45',
    'Fillipe',
    'Valinhos',
    '04-05-1999'
);

