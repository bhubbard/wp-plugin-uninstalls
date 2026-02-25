-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_price_history_db_version', 'wc_price_history_settings', 'woocommerce_tax_display_shop');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wc_price_history_migration_notice_dismissed', '_price', '_wc_price_history');
DELETE FROM wp_usermeta WHERE meta_key IN ('wc_price_history_migration_notice_dismissed', '_price', '_wc_price_history');
DELETE FROM wp_termmeta WHERE meta_key IN ('wc_price_history_migration_notice_dismissed', '_price', '_wc_price_history');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wc_price_history_migration_notice_dismissed', '_price', '_wc_price_history');

