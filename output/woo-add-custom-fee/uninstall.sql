-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'woocommerce_calc_taxes', 'wacf_enable', 'wacf_minimum', 'wacf_maximum', 'wacf_enable_min', 'wacf_enable_max', 'wacf_type', 'wacf_fee_label', 'wacf_fee_charges', 'wacf_taxable', 'wacf_tax_class', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

