



// clone json data to sandbox
CREATE OR REPLACE TABLE sandbox.T02878B.tpa_integrated_pymt_json 
clone reporting_nonprod.intgsearch.tpa_integrated_pymt_json;
// setup view
CREATE OR REPLACE VIEW sandbox.T02878B.tpa_integrated_payments AS 
SELECT I_PRTN::SMALLINT AS I_PRTN
    ,I_IP_ID::DECIMAL(19) AS I_IP_ID
    ,I_IP_TRAN_ID::DECIMAL(19) AS I_IP_TRAN_ID
    ,I_IP_ACCT_NUM_ID::DECIMAL(19) AS I_IP_ACCT_NUM_ID
    ,X_IP_DBT_CRD_IND::CHAR(1) AS X_IP_DBT_CRD_IND
    ,X_IP_HEALTHCARE_ACCT_IND::CHAR(1) AS X_IP_HEALTHCARE_ACCT_IND
    ,I_IP_SSC_ID::SMALLINT AS I_IP_SSC_ID
    ,C_IP_SRC_SYS::CHAR(2) AS C_IP_SRC_SYS
    ,I_IP_PSC_ID::SMALLINT AS I_IP_PSC_ID
    ,C_IP_PAYMENT_SRC_CHANNEL::CHAR(2) AS C_IP_PAYMENT_SRC_CHANNEL
    ,I_IP_TRACE_SEQ_NUM::VARCHAR(31) AS I_IP_TRACE_SEQ_NUM
    ,I_IP_SC_ID::SMALLINT AS I_IP_SC_ID
    ,C_IP_STATUS::CHAR(3) AS C_IP_STATUS
    ,I_IP_AIT_ID::SMALLINT AS I_IP_AIT_ID
    ,C_IP_ACCT_ID_TYPE::VARCHAR(4) AS C_IP_ACCT_ID_TYPE
    ,D_IP_POST::DATE AS D_IP_POST
    ,I_IP_POST_SYS_SEQ_NUM::VARCHAR(31) AS I_IP_POST_SYS_SEQ_NUM
    ,I_IP_CHECK_NUM::DECIMAL(19) AS I_IP_CHECK_NUM
    ,I_IP_UFC_ID::SMALLINT AS I_IP_UFC_ID
    ,C_IP_UDS_FORM::CHAR(3) AS C_IP_UDS_FORM
    ,I_IP_UTC_ID::SMALLINT AS I_IP_UTC_ID
    ,C_IP_UDS_TRAN::CHAR(3) AS C_IP_UDS_TRAN
    ,C_IP_ORIGNTD_RECVD_TRAN_TYP::CHAR(1) AS C_IP_ORIGNTD_RECVD_TRAN_TYP
    ,Z_IP_PAY_INIT_RCPT_DT::TIMESTAMP AS Z_IP_PAY_INIT_RCPT_DT
    ,A_IP_DEBIT_PAY::DECIMAL(31) AS A_IP_DEBIT_PAY
    ,D_IP_DEBIT_VALUE::DATE AS D_IP_DEBIT_VALUE
    ,I_IP_DCC_ID::SMALLINT AS I_IP_DCC_ID
    ,C_IP_DEBIT_CURRENCY::CHAR(3) AS C_IP_DEBIT_CURRENCY
    ,A_IP_CREDIT_PAY::DECIMAL(31) AS A_IP_CREDIT_PAY
    ,D_IP_CREDIT_VALUE::DATE AS D_IP_CREDIT_VALUE
    ,I_IP_CCC_ID::SMALLINT AS I_IP_CCC_ID
    ,C_IP_CREDIT_CURRENCY::CHAR(3) AS C_IP_CREDIT_CURRENCY
    ,N_IP_PAY_DESC::VARCHAR(135) AS N_IP_PAY_DESC
    ,I_IP_SENDER_REF_NUM::VARCHAR(80) AS I_IP_SENDER_REF_NUM
    ,N_IP_PAYMENT_NETWORK_REF_INFO::VARCHAR(80) AS N_IP_PAYMENT_NETWORK_REF_INFO
    ,I_IP_CNTRPRTY_ACCT_NUM_ID::DECIMAL(19) AS I_IP_CNTRPRTY_ACCT_NUM_ID
    ,N_IP_CNTRPRTY_NM::VARCHAR(80) AS N_IP_CNTRPRTY_NM
    ,I_IP_CIT_ID::SMALLINT AS I_IP_CIT_ID
    ,C_IP_CNTRPRTY_ID_TYP::VARCHAR(4) AS C_IP_CNTRPRTY_ID_TYP
    ,I_IP_CNTRPRTY_ID::VARCHAR(64) AS I_IP_CNTRPRTY_ID
    ,I_IP_BIT_ID::SMALLINT AS I_IP_BIT_ID
    ,C_IP_CNTRPRTY_BANK_ID_TYPE::VARCHAR(4) AS C_IP_CNTRPRTY_BANK_ID_TYPE
    ,I_IP_CNTRPRTY_BANK_ID::DECIMAL(19) AS I_IP_CNTRPRTY_BANK_ID
    ,I_IP_BAI_ID::SMALLINT AS I_IP_BAI_ID
    ,C_IP_BAI::CHAR(3) AS C_IP_BAI
    ,I_IP_TRN_TYP_ID::SMALLINT AS I_IP_TRN_TYP_ID
    ,C_IP_TRAN_TYP::CHAR(3) AS C_IP_TRAN_TYP
    ,I_IP_ASSOC_ID::DECIMAL(19) AS I_IP_ASSOC_ID
    ,Z_INSRT::TIMESTAMP AS Z_INSRT
    ,X_INSRT::CHAR(8) AS X_INSRT
    ,Z_UPDT::TIMESTAMP AS Z_UPDT
    ,X_UPDT::CHAR(8) AS X_UPDT
    ,I_IP_SECNDRY_ID::DECIMAL(19) AS I_IP_SECNDRY_ID
    ,N_IP_PAYMENT_SUB_TYPE::VARCHAR(80) AS N_IP_PAYMENT_SUB_TYPE
    ,N_IP_PAYMENT_SRCH_VALUE::VARCHAR(80) AS N_IP_PAYMENT_SRCH_VALUE
    ,D_IP_RETURNED::DATE AS D_IP_RETURNED
    ,D_IP_CANCELED::DATE AS D_IP_CANCELED
    ,Z_IP_ASSOC_UPDT_DT::TIMESTAMP AS Z_IP_ASSOC_UPDT_DT
    ,D_IP_EXPIRED::DATE AS D_IP_EXPIRED
    ,D_IP_CHK_ISSUE::DATE AS D_IP_CHK_ISSUE
    ,I_IP_PLAIN_TXT_ACCT_NUM::VARCHAR(80) AS I_IP_PLAIN_TXT_ACCT_NUM
    ,I_IP_PLAIN_TXT_CNTPTY_ACCT_NUM::VARCHAR(80) AS I_IP_PLAIN_TXT_CNTPTY_ACCT_NUM
    ,I_IP_PLAIN_TXT_CNTRPRTY_BANK::VARCHAR(80) AS I_IP_PLAIN_TXT_CNTRPRTY_BANK
    ,I_IP_PLAIN_TXT_SECNDRY::VARCHAR(80) AS I_IP_PLAIN_TXT_SECNDRY
FROM (
    SELECT CASE WHEN jsondata:I_PRTN = '' THEN NULL ELSE jsondata:I_PRTN END AS I_PRTN
        ,CASE WHEN jsondata:I_IP_ID = '' THEN NULL ELSE jsondata:I_IP_ID END AS I_IP_ID
        ,CASE WHEN jsondata:I_IP_TRAN_ID = '' THEN NULL ELSE jsondata:I_IP_TRAN_ID END AS I_IP_TRAN_ID
        ,CASE WHEN jsondata:I_IP_ACCT_NUM_ID = '' THEN NULL ELSE jsondata:I_IP_ACCT_NUM_ID END AS I_IP_ACCT_NUM_ID
        ,CASE WHEN jsondata:X_IP_DBT_CRD_IND = '' THEN NULL ELSE jsondata:X_IP_DBT_CRD_IND END AS X_IP_DBT_CRD_IND
        ,CASE WHEN jsondata:X_IP_HEALTHCARE_ACCT_IND = '' THEN NULL ELSE jsondata:X_IP_HEALTHCARE_ACCT_IND END AS X_IP_HEALTHCARE_ACCT_IND
        ,CASE WHEN jsondata:I_IP_SSC_ID = '' THEN NULL ELSE jsondata:I_IP_SSC_ID END AS I_IP_SSC_ID
        ,CASE WHEN jsondata:C_IP_SRC_SYS = '' THEN NULL ELSE jsondata:C_IP_SRC_SYS END AS C_IP_SRC_SYS
        ,CASE WHEN jsondata:I_IP_PSC_ID = '' THEN NULL ELSE jsondata:I_IP_PSC_ID END AS I_IP_PSC_ID
        ,CASE WHEN jsondata:C_IP_PAYMENT_SRC_CHANNEL = '' THEN NULL ELSE jsondata:C_IP_PAYMENT_SRC_CHANNEL END AS C_IP_PAYMENT_SRC_CHANNEL
        ,CASE WHEN jsondata:I_IP_TRACE_SEQ_NUM = '' THEN NULL ELSE jsondata:I_IP_TRACE_SEQ_NUM END AS I_IP_TRACE_SEQ_NUM
        ,CASE WHEN jsondata:I_IP_SC_ID = '' THEN NULL ELSE jsondata:I_IP_SC_ID END AS I_IP_SC_ID
        ,CASE WHEN jsondata:C_IP_STATUS = '' THEN NULL ELSE jsondata:C_IP_STATUS END AS C_IP_STATUS
        ,CASE WHEN jsondata:I_IP_AIT_ID = '' THEN NULL ELSE jsondata:I_IP_AIT_ID END AS I_IP_AIT_ID
        ,CASE WHEN jsondata:C_IP_ACCT_ID_TYPE = '' THEN NULL ELSE jsondata:C_IP_ACCT_ID_TYPE END AS C_IP_ACCT_ID_TYPE
        ,CASE WHEN jsondata:D_IP_POST = '' THEN NULL ELSE jsondata:D_IP_POST END AS D_IP_POST
        ,CASE WHEN jsondata:I_IP_POST_SYS_SEQ_NUM = '' THEN NULL ELSE jsondata:I_IP_POST_SYS_SEQ_NUM END AS I_IP_POST_SYS_SEQ_NUM
        ,CASE WHEN jsondata:I_IP_CHECK_NUM = '' THEN NULL ELSE jsondata:I_IP_CHECK_NUM END AS I_IP_CHECK_NUM
        ,CASE WHEN jsondata:I_IP_UFC_ID = '' THEN NULL ELSE jsondata:I_IP_UFC_ID END AS I_IP_UFC_ID
        ,CASE WHEN jsondata:C_IP_UDS_FORM = '' THEN NULL ELSE jsondata:C_IP_UDS_FORM END AS C_IP_UDS_FORM
        ,CASE WHEN jsondata:I_IP_UTC_ID = '' THEN NULL ELSE jsondata:I_IP_UTC_ID END AS I_IP_UTC_ID
        ,CASE WHEN jsondata:C_IP_UDS_TRAN = '' THEN NULL ELSE jsondata:C_IP_UDS_TRAN END AS C_IP_UDS_TRAN
        ,CASE WHEN jsondata:C_IP_ORIGNTD_RECVD_TRAN_TYP = '' THEN NULL ELSE jsondata:C_IP_ORIGNTD_RECVD_TRAN_TYP END AS C_IP_ORIGNTD_RECVD_TRAN_TYP
        ,CASE WHEN jsondata:Z_IP_PAY_INIT_RCPT_DT = '' THEN NULL ELSE jsondata:Z_IP_PAY_INIT_RCPT_DT END AS Z_IP_PAY_INIT_RCPT_DT
        ,CASE WHEN jsondata:A_IP_DEBIT_PAY = '' THEN 0.0 ELSE jsondata:A_IP_DEBIT_PAY END AS A_IP_DEBIT_PAY
        ,CASE WHEN jsondata:D_IP_DEBIT_VALUE = '' THEN NULL ELSE jsondata:D_IP_DEBIT_VALUE END AS D_IP_DEBIT_VALUE
        ,CASE WHEN jsondata:I_IP_DCC_ID = '' THEN NULL ELSE jsondata:I_IP_DCC_ID END AS I_IP_DCC_ID
        ,CASE WHEN jsondata:C_IP_DEBIT_CURRENCY = '' THEN NULL ELSE jsondata:C_IP_DEBIT_CURRENCY END AS C_IP_DEBIT_CURRENCY
        ,CASE WHEN jsondata:A_IP_CREDIT_PAY = '' THEN 0.0 ELSE jsondata:A_IP_CREDIT_PAY END AS A_IP_CREDIT_PAY
        ,CASE WHEN jsondata:D_IP_CREDIT_VALUE = '' THEN NULL ELSE jsondata:D_IP_CREDIT_VALUE END AS D_IP_CREDIT_VALUE
        ,CASE WHEN jsondata:I_IP_CCC_ID = '' THEN NULL ELSE jsondata:I_IP_CCC_ID END AS I_IP_CCC_ID
        ,CASE WHEN jsondata:C_IP_CREDIT_CURRENCY = '' THEN NULL ELSE jsondata:C_IP_CREDIT_CURRENCY END AS C_IP_CREDIT_CURRENCY
        ,CASE WHEN jsondata:N_IP_PAY_DESC = '' THEN NULL ELSE jsondata:N_IP_PAY_DESC END AS N_IP_PAY_DESC
        ,CASE WHEN jsondata:I_IP_SENDER_REF_NUM = '' THEN NULL ELSE jsondata:I_IP_SENDER_REF_NUM END AS I_IP_SENDER_REF_NUM
        ,CASE WHEN jsondata:N_IP_PAYMENT_NETWORK_REF_INFO = '' THEN NULL ELSE jsondata:N_IP_PAYMENT_NETWORK_REF_INFO END AS N_IP_PAYMENT_NETWORK_REF_INFO
        ,CASE WHEN jsondata:I_IP_CNTRPRTY_ACCT_NUM_ID = '' THEN NULL ELSE jsondata:I_IP_CNTRPRTY_ACCT_NUM_ID END AS I_IP_CNTRPRTY_ACCT_NUM_ID
        ,CASE WHEN jsondata:N_IP_CNTRPRTY_NM = '' THEN NULL ELSE jsondata:N_IP_CNTRPRTY_NM END AS N_IP_CNTRPRTY_NM
        ,CASE WHEN jsondata:I_IP_CIT_ID = '' THEN NULL ELSE jsondata:I_IP_CIT_ID END AS I_IP_CIT_ID
        ,CASE WHEN jsondata:C_IP_CNTRPRTY_ID_TYP = '' THEN NULL ELSE jsondata:C_IP_CNTRPRTY_ID_TYP END AS C_IP_CNTRPRTY_ID_TYP
        ,CASE WHEN jsondata:I_IP_CNTRPRTY_ID = '' THEN NULL ELSE jsondata:I_IP_CNTRPRTY_ID END AS I_IP_CNTRPRTY_ID
        ,CASE WHEN jsondata:I_IP_BIT_ID = '' THEN NULL ELSE jsondata:I_IP_BIT_ID END AS I_IP_BIT_ID
        ,CASE WHEN jsondata:C_IP_CNTRPRTY_BANK_ID_TYPE = '' THEN NULL ELSE jsondata:C_IP_CNTRPRTY_BANK_ID_TYPE END AS C_IP_CNTRPRTY_BANK_ID_TYPE
        ,CASE WHEN jsondata:I_IP_CNTRPRTY_BANK_ID = '' THEN NULL ELSE jsondata:I_IP_CNTRPRTY_BANK_ID END AS I_IP_CNTRPRTY_BANK_ID
        ,CASE WHEN jsondata:I_IP_BAI_ID = '' THEN NULL ELSE jsondata:I_IP_BAI_ID END AS I_IP_BAI_ID
        ,CASE WHEN jsondata:C_IP_BAI = '' THEN NULL ELSE jsondata:C_IP_BAI END AS C_IP_BAI
        ,CASE WHEN jsondata:I_IP_TRN_TYP_ID = '' THEN NULL ELSE jsondata:I_IP_TRN_TYP_ID END AS I_IP_TRN_TYP_ID
        ,CASE WHEN jsondata:C_IP_TRAN_TYP = '' THEN NULL ELSE jsondata:C_IP_TRAN_TYP END AS C_IP_TRAN_TYP
        ,CASE WHEN jsondata:I_IP_ASSOC_ID = '' THEN NULL ELSE jsondata:I_IP_ASSOC_ID END AS I_IP_ASSOC_ID
        ,CASE WHEN jsondata:Z_INSRT = '' THEN NULL ELSE jsondata:Z_INSRT END AS Z_INSRT
        ,CASE WHEN jsondata:X_INSRT = '' THEN NULL ELSE jsondata:X_INSRT END AS X_INSRT
        ,CASE WHEN jsondata:Z_UPDT = '' THEN NULL ELSE jsondata:Z_UPDT END AS Z_UPDT
        ,CASE WHEN jsondata:X_UPDT = '' THEN NULL ELSE jsondata:X_UPDT END AS X_UPDT
        ,CASE WHEN jsondata:I_IP_SECNDRY_ID = '' THEN NULL ELSE jsondata:I_IP_SECNDRY_ID END AS I_IP_SECNDRY_ID
        ,CASE WHEN jsondata:N_IP_PAYMENT_SUB_TYPE = '' THEN NULL ELSE jsondata:N_IP_PAYMENT_SUB_TYPE END AS N_IP_PAYMENT_SUB_TYPE
        ,CASE WHEN jsondata:N_IP_PAYMENT_SRCH_VALUE = '' THEN NULL ELSE jsondata:N_IP_PAYMENT_SRCH_VALUE END AS N_IP_PAYMENT_SRCH_VALUE
        ,CASE WHEN jsondata:D_IP_RETURNED = '' THEN NULL ELSE jsondata:D_IP_RETURNED END AS D_IP_RETURNED
        ,CASE WHEN jsondata:D_IP_CANCELED = '' THEN NULL ELSE jsondata:D_IP_CANCELED END AS D_IP_CANCELED
        ,CASE WHEN jsondata:Z_IP_ASSOC_UPDT_DT = '' THEN NULL ELSE jsondata:Z_IP_ASSOC_UPDT_DT END AS Z_IP_ASSOC_UPDT_DT
        ,CASE WHEN jsondata:D_IP_EXPIRED = '' THEN NULL ELSE jsondata:D_IP_EXPIRED END AS D_IP_EXPIRED
        ,CASE WHEN jsondata:D_IP_CHK_ISSUE = '' THEN NULL ELSE jsondata:D_IP_CHK_ISSUE END AS D_IP_CHK_ISSUE
        ,CASE WHEN jsondata:I_IP_PLAIN_TXT_ACCT_NUM = '' THEN NULL ELSE jsondata:I_IP_PLAIN_TXT_ACCT_NUM END AS I_IP_PLAIN_TXT_ACCT_NUM
        ,CASE WHEN jsondata:I_IP_PLAIN_TXT_CNTPTY_ACCT_NUM = '' THEN NULL ELSE jsondata:I_IP_PLAIN_TXT_CNTPTY_ACCT_NUM END AS I_IP_PLAIN_TXT_CNTPTY_ACCT_NUM
        ,CASE WHEN jsondata:I_IP_PLAIN_TXT_CNTRPRTY_BANK = '' THEN NULL ELSE jsondata:I_IP_PLAIN_TXT_CNTRPRTY_BANK END AS I_IP_PLAIN_TXT_CNTRPRTY_BANK
        ,CASE WHEN jsondata:I_IP_PLAIN_TXT_SECNDRY = '' THEN NULL ELSE jsondata:I_IP_PLAIN_TXT_SECNDRY END AS I_IP_PLAIN_TXT_SECNDRY
    FROM REPORTING_NONPROD.INTGSEARCH.TPA_INTEGRATED_PYMT_JSON
  ) TPA_INTEGRATED_PYMT_RAW;
