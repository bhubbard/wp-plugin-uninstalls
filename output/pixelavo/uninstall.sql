-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pixelavo_diagnostic_data_agreed', 'pixelavo_diagnostic_data_notice', 'pixelavo_delete_data_fetch_cache', 'pixelavo_settings', 'pixelavo_ai_db_version', 'pixelavo_openssl_notice_dismissed', 'pixelavo_wp_keys_notice_dismissed', 'pixelavo_events', 'pixelavo_edd_events', 'pixelavo_download_files', 'pixelavo_time_on_page', 'pixelavo_page_scroll', 'pixelavo_form_submission', 'pixelavo_other_events', 'pixelavo_wc_view_content', 'pixelavo_wc_purchase', 'pixelavo_do_activation_redirect', 'pixelavo_installed', 'force_update_pixelavo_notice_info', 'pixelavo_pixels_list', 'pixelavo_custom_events', 'pixelavo_other_events_setting_modify', 'pixelavo_setting_modify_124', 'pixelavo_edd_purchase', 'pixelavo_edd_view_content', 'pixelavo-notice-id-pixelavo-diagnostic-notice', 'pixelavo_ai_tables_checked', 'pixelavo_notice_info');
DELETE FROM wp_options WHERE option_name LIKE '%_htiop';
DELETE FROM wp_options WHERE option_name LIKE '%_htiop_bar';
DELETE FROM wp_options WHERE option_name LIKE '%_htiop_popup';
DELETE FROM wp_options WHERE option_name LIKE '%_htiop_redirect';
DELETE FROM wp_options WHERE option_name LIKE '%_htiop_data';
DELETE FROM wp_options WHERE option_name LIKE '%_htiop_timer';
DELETE FROM wp_options WHERE option_name LIKE '%_htiop_data';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pixelavo_user_login', 'pixelavo_user_signup', '_product_condition');
DELETE FROM wp_usermeta WHERE meta_key IN ('pixelavo_user_login', 'pixelavo_user_signup', '_product_condition');
DELETE FROM wp_termmeta WHERE meta_key IN ('pixelavo_user_login', 'pixelavo_user_signup', '_product_condition');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pixelavo_user_login', 'pixelavo_user_signup', '_product_condition');

