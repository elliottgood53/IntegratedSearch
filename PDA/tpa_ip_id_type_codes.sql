CREATE OR REPLACE TABLE "SANDBOX"."T02878B".TPA_IP_ID_TYPE_CODES(
I_IITC_ID                     INTEGER             NOT NULL,
C_IITC_ID_TYPE                VARCHAR(4)          NOT NULL,
N_IITC_SHORT_DESC             VARCHAR(30)         NOT NULL,
N_IITC_LONG_DESC              VARCHAR(80)         Null,
Z_IITC_EFF_START              TIMESTAMP           NOT NULL,
Z_IITC_EFF_END                TIMESTAMP           Null,
Z_INSRT                       TIMESTAMP           NOT NULL,
X_INSRT                       CHAR(8)             NOT NULL,
Z_UPDT                        TIMESTAMP,
X_UPDT                        CHAR(8)              
);
