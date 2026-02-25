-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bdpg_hpos_migration_status', 'bdpg_hpos_migration_total', 'bdpg_hpos_migration_processed', 'bdpg_hpos_migration_gateway', 'bdpg_hpos_migration_last_offset', 'bdpg_hpos_migration_start_time', 'bdpg_hpos_migration_end_time', 'bdpg_do_activation_redirect', 'bdpg_hpos_notice_dismissed', 'woocommerce_custom_orders_table_enabled', 'bdpg_currency_settings', 'woocommerce_woo_bkash_settings', 'woocommerce_woo_rocket_settings', 'woocommerce_woo_nagad_settings');
DELETE FROM wp_options WHERE option_name LIKE '%_accounts';
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_number';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_number';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_number';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_number';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_trans_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_trans_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_trans_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_trans_id';

