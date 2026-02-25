-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ht_cc_service_content', 'htcc_as_options', 'htcc_custom_options', 'htcc_options', 'htcc_fb_ref', 'mobilemonkey_environment', 'mobilemonkey_active_page_info', 'htcc_fb_js_src', 'htcc_plugin_details', 'mobilemonkey_token', 'wp-chatbot__previously-connected-page', 'banner_notice_off', 'lead_notice_off', 'promo_notice_off', 'done-tab', 'ht_cc_admin_sidebar__hide_mobile_app_banner', 'pre_value', 'current-tab', 'cg_notice_off');
DELETE FROM wp_options WHERE option_name LIKE '%token';
DELETE FROM wp_options WHERE option_name LIKE '%company_id';
DELETE FROM wp_options WHERE option_name LIKE '%active_page_info';
DELETE FROM wp_options WHERE option_name LIKE '%fb_internal_page_id';
DELETE FROM wp_options WHERE option_name LIKE '%available_company';
DELETE FROM wp_options WHERE option_name LIKE '%page_info';
DELETE FROM wp_options WHERE option_name LIKE '%account_info';
DELETE FROM wp_options WHERE option_name LIKE '%message_statistic';
DELETE FROM wp_options WHERE option_name LIKE '%current_subscribe';
DELETE FROM wp_options WHERE option_name LIKE '%wp_plan';
DELETE FROM wp_options WHERE option_name LIKE '%environment';

