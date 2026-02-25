-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wooya_settings', 'market_exporter_shop_settings', 'wooya_version', 'wooya-progress-step', 'market_exporter_doing_cron', 'woocommerce_weight_unit', 'woocommerce_dimension_unit', 'market_exporter_notice_hide', 'wooya-generating-yml');

