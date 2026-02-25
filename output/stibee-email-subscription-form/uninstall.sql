-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('Wp_Stibee_apitoken', 'Wp_Stibee_subscribeendpoint', 'update_option_Wp_Stibee_selectedlist', 'update_option_Wp_Stibee_formfields', 'Wp_Stibee_selectedlist', 'Wp_Stibee_formfields', 'Wp_Stibee_formtitle', 'Wp_Stibee_formdesc', 'Wp_Stibee_buttontext', 'Wp_Stibee_buttoncolor', 'Wp_Stibee_buttonbg', 'Wp_Stibee_position', 'Wp_Stibee_day');
DELETE FROM wp_options WHERE option_name LIKE '%_apitoken';
DELETE FROM wp_options WHERE option_name LIKE '%_selectedlist';
DELETE FROM wp_options WHERE option_name LIKE '%_formfields';
DELETE FROM wp_options WHERE option_name LIKE '%_formtitle';
DELETE FROM wp_options WHERE option_name LIKE '%_formdesc';
DELETE FROM wp_options WHERE option_name LIKE '%_buttontext';
DELETE FROM wp_options WHERE option_name LIKE '%_buttoncolor';
DELETE FROM wp_options WHERE option_name LIKE '%_buttonbg';

