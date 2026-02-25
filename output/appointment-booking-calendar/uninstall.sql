-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('CPABC_APPOINTMENTS_LOAD_SCRIPTS', 'CPABC_PCODE', 'CPABC_APPOINTMENTS_DEFAULT_USE_EDITOR', 'CPABC_CAL_TIME_ZONE_MODIFY_SET', 'CPABC_CAL_TIME_SLOT_SIZE_SET', 'CPABC_EXCLUDED_COLUMNS', 'ABC_RCODE', 'ABC_ONE_TIME_4UPDATE', 'CP_ABC_JS', 'CP_ABC_CSS');
DELETE FROM wp_options WHERE option_name LIKE 'installed_%';
DELETE FROM wp_options WHERE option_name LIKE '%_JS';
DELETE FROM wp_options WHERE option_name LIKE '%_CSS';
DELETE FROM wp_options WHERE option_name LIKE 'cpeople-captcha-%';
DELETE FROM wp_options WHERE option_name LIKE 'codepeople_promote_banner_%';

