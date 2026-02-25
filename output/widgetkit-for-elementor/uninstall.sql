-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('notice_dissmissed', 'widgetkit_save_settings', 'widgetkit_save_woo_settings', 'widgetkit_save_woo_single_settings', 'widgetkit_save_ld_settings', 'widgetkit_save_lp_settings', 'widgetkit_save_sensei_settings', 'widgetkit_save_lifter_settings', 'widgetkit_save_tutor_settings', 'wkfe_mailchimp_api_key', 'wkfe_mailchimp_list_id', 'wk_pro_license_key', 'active_sitewide_plugins', 'wk-td-ads-notice', 'changelog_data');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

