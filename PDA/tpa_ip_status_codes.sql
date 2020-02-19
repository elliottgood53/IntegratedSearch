

CREATE OR REPLACE TABLE "SANDBOX"."T02878B".TPA_IP_STATUS_CODES (
I_ISC_SC_ID                   INTEGER           NOT NULL,
C_ISC_STATUS                  VARCHAR(3)        NOT NULL,
N_ISC_SHORT_DESC              VARCHAR(30)       NOT NULL,
N_ISC_LONG_DESC               VARCHAR(80)       NULL,
N_ISC_NORM_DESC               VARCHAR(30)       NULL,
Z_ISC_EFF_START               TIMESTAMP         NOT NULL,
Z_ISC_EFF_END                 TIMESTAMP         NULL,
Z_INSRT                       TIMESTAMP         NOT NULL,
X_INSRT                       VARCHAR(8)        NOT NULL,
Z_UPDT                        TIMESTAMP,
X_UPDT                        VARCHAR(8)
);
