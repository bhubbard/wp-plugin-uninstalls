-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'multiple_fees', 'multiple_fee_products', 'multiple_fee_categories', 'multiple_fee_tags', 'multiple_fee_tax_class', 'multiple_fee_min_amount', 'multiple_fee_max_amount', 'multiple_fee_enable_tax', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

