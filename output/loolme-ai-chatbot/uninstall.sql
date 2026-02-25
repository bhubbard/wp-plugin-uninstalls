-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('loolme__data_id', 'loolme__data_logo', 'loolme__company_id', 'loolme__require_login', 'loolme__prod_valid', 'loolme__demo_valid');
DELETE FROM wp_options WHERE option_name LIKE '%_knowledge_url_list';
DELETE FROM wp_options WHERE option_name LIKE '%_helpdesk_name';
DELETE FROM wp_options WHERE option_name LIKE '%_character_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_self_introduction';
DELETE FROM wp_options WHERE option_name LIKE '%_intro_message';
DELETE FROM wp_options WHERE option_name LIKE '%_require_login';
DELETE FROM wp_options WHERE option_name LIKE '%_err_knowledge_url_list';
DELETE FROM wp_options WHERE option_name LIKE '%_err_helpdesk_name';
DELETE FROM wp_options WHERE option_name LIKE '%_err_character_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_err_self_introduction';
DELETE FROM wp_options WHERE option_name LIKE '%_err_intro_message';
DELETE FROM wp_options WHERE option_name LIKE '%_company_id';
DELETE FROM wp_options WHERE option_name LIKE '%_demo_valid';
DELETE FROM wp_options WHERE option_name LIKE '%_data_id';
DELETE FROM wp_options WHERE option_name LIKE '%_data_logo';
DELETE FROM wp_options WHERE option_name LIKE '%_err_data_id';
DELETE FROM wp_options WHERE option_name LIKE '%_err_data_logo';
DELETE FROM wp_options WHERE option_name LIKE '%_prod_valid';

