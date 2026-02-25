-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('myaliceai_plugin_status', 'myaliceai_review_notice_time', 'woocommerce_shop_page_id', 'myaliceai_is_needed_migration', 'myaliceai_wc_auth', 'myaliceai_api_data', 'myaliceai_settings', 'myaliceai_customization_notice_dismiss', 'myaliceai_wc_api_status');

