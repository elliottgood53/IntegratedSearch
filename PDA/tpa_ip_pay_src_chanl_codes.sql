

CREATE OR REPLACE TABLE "SANDBOX"."T02878B".TPA_IP_PAY_SRC_CHANL_CODES(
I_IPSCC_PAY_SRC_CHANL_ID      INTEGER             NOT NULL,
C_IPSCC_PAY_SRC_CHANL         VARCHAR(2)          NOT NULL,
N_IPSCC_SHORT_DESC            VARCHAR(30)         NOT NULL,
N_IPSCC_LONG_DESC             VARCHAR(80)         Null,
Z_IPSCC_EFF_START             TIMESTAMP           NOT NULL,
Z_IPSCC_EFF_END               TIMESTAMP           Null,
Z_INSRT                       TIMESTAMP           NOT NULL,
X_INSRT                       VARCHAR(8)          NOT NULL,
Z_UPDT                        TIMESTAMP,
X_UPDT                        VARCHAR(8)              
);
