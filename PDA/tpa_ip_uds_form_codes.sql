

CREATE OR REPLACE TABLE "SANDBOX"."T02878B".TPA_IP_UDS_FORM_CODES(
I_IUFC_UFC_ID                 INTEGER                      NOT NULL,
C_IUFC_UDS_FORM               VARCHAR(3)                       NOT NULL,
N_IUFC_SHORT_DESC             VARCHAR(30)                   NOT NULL,
N_IUFC_LONG_DESC              VARCHAR(80)          Null,
Z_IUFC_EFF_START              TIMESTAMP                     NOT NULL,
Z_IUFC_EFF_END                TIMESTAMP            Null,
Z_INSRT                       TIMESTAMP                     NOT NULL,
X_INSRT                       VARCHAR(8)               NOT NULL,
Z_UPDT                        TIMESTAMP,
X_UPDT                        VARCHAR(8)              
);
