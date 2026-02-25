-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('MENSAGIA_LOGIN_EMAIL', 'MENSAGIA_LOGIN_PASSWORD', 'MENSAGIA_AUTHENTICATED', 'MENSAGIA_PREFIX_MODE', 'MENSAGIA_API_CONFIGURATION', 'mensagiasms_jal_db_version', 'MensagiaWPAdminNotices');

