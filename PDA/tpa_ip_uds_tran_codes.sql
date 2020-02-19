

CREATE OR REPLACE TABLE "SANDBOX"."T02878B".TPA_IP_UDS_TRAN_CODES(
I_IUTC_UTC_ID                 INTEGER              NOT NULL,
C_IUTC_UDS_TRAN_CODE          VARCHAR(3)           NOT NULL,
N_IUTC_SHORT_DESC             VARCHAR(30)          NOT NULL,
N_IUTC_LONG_DESC              VARCHAR(80)          Null,
Z_IUTC_EFF_START              TIMESTAMP            NOT NULL,
Z_IUTC_EFF_END                TIMESTAMP            Null,
Z_INSRT                       TIMESTAMP            NOT NULL,
X_INSRT                       VARCHAR(8)           NOT NULL,
Z_UPDT                        TIMESTAMP,
X_UPDT                        VARCHAR(8)
);