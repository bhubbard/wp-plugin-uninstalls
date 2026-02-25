-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('off_analytics_notice_displayed', 'wcliqpay_analytics_enabled', 'woocommerce_liqpay_settings', 'wcliqpay_send_remote_analytics_data');
DELETE FROM wp_options WHERE option_name LIKE 'wcliqpay_notice_dismissed_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('product_rro_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('product_rro_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('product_rro_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('product_rro_id');

