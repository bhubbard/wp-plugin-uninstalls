-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_weight_unit', 'disco_settings', 'woocommerce_tax_display_shop', 'DISCO_DB_VERSION', 'woocommerce_default_country', 'disco_review_notice', 'disco_review_notice_next_show_time', 'disco_wpml_notice_hidden', 'disco_rp-wcdpd_notice_hidden');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';
DELETE FROM wp_options WHERE option_name LIKE '%_cached_promos';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('disco_review_dismissed', 'disco_promotional_holiday_banner_2025', 'disco_compatible_plugin_notice_dismissed', 'disco_feature_unlock_notice_dismissed', '_price', '_regular_price', '_sale_price', 'disco_review_notice_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('disco_review_dismissed', 'disco_promotional_holiday_banner_2025', 'disco_compatible_plugin_notice_dismissed', 'disco_feature_unlock_notice_dismissed', '_price', '_regular_price', '_sale_price', 'disco_review_notice_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('disco_review_dismissed', 'disco_promotional_holiday_banner_2025', 'disco_compatible_plugin_notice_dismissed', 'disco_feature_unlock_notice_dismissed', '_price', '_regular_price', '_sale_price', 'disco_review_notice_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('disco_review_dismissed', 'disco_promotional_holiday_banner_2025', 'disco_compatible_plugin_notice_dismissed', 'disco_feature_unlock_notice_dismissed', '_price', '_regular_price', '_sale_price', 'disco_review_notice_dismissed');

