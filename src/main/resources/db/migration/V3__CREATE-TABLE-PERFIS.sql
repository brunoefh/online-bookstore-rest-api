CREATE TABLE PERFIS
(
    ID   BIGINT AUTO_INCREMENT,
    NOME VARCHAR(100) NOT NULL,

    PRIMARY KEY (ID)
);

CREATE TABLE PERFIS_USUARIOS
(
    USUARIO_ID BIGINT NOT NULL,
    PERFIL_ID  BIGINT NOT NULL,

    PRIMARY KEY (USUARIO_ID, PERFIL_ID),
    FOREIGN KEY (USUARIO_ID) REFERENCES USUARIOS (ID),
    FOREIGN KEY (PERFIL_ID) REFERENCES PERFIS (ID)
);

INSERT INTO PERFIS
VALUES (1, 'ROLE_ADMIN');
INSERT INTO PERFIS
VALUES (2, 'ROLE_COMUM');
