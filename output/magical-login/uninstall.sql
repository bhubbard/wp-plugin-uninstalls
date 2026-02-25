-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('name');
DELETE FROM wp_options WHERE option_name LIKE '%recovery_email_subject';
DELETE FROM wp_options WHERE option_name LIKE '%recovery_email_content';
DELETE FROM wp_options WHERE option_name LIKE '%email_login_alowed';
DELETE FROM wp_options WHERE option_name LIKE '%username_login_alowed';
DELETE FROM wp_options WHERE option_name LIKE '%email_recovery_alowed';
DELETE FROM wp_options WHERE option_name LIKE '%username_recovery_alowed';
DELETE FROM wp_options WHERE option_name LIKE '%login_header';
DELETE FROM wp_options WHERE option_name LIKE '%login_username_lable';
DELETE FROM wp_options WHERE option_name LIKE '%login_username_placeholder';
DELETE FROM wp_options WHERE option_name LIKE '%login_pass_lable';
DELETE FROM wp_options WHERE option_name LIKE '%login_pass_placeholder';
DELETE FROM wp_options WHERE option_name LIKE '%login_rememberme_lable';
DELETE FROM wp_options WHERE option_name LIKE '%login_submit_text';
DELETE FROM wp_options WHERE option_name LIKE '%login_rememberme_defualt';
DELETE FROM wp_options WHERE option_name LIKE '%recovery_header';
DELETE FROM wp_options WHERE option_name LIKE '%recovery_username_lable';
DELETE FROM wp_options WHERE option_name LIKE '%recovery_username_placeholder';
DELETE FROM wp_options WHERE option_name LIKE '%recovery_submit_text';
DELETE FROM wp_options WHERE option_name LIKE '%extra_wp_login';

