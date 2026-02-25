-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_hide_out_of_stock_items', 'ambisn_table_items_per_page', 'ambisn_table_emails_per_page', 'ambisn_feedback_popup', 'ambisn_lang_fixed_products', 'ambisn_plugin_data', 'ambisn_migration_product_ids', 'ambisn_migration_offset', 'wc_admail_subscriptions_migration_status', 'ambisn_migration_notice', 'wc_admail_processed_count', 'wc_admail_subscriptions_progress');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wc_admail_count', 'wc_admail_data', 'wc_admail');
DELETE FROM wp_usermeta WHERE meta_key IN ('wc_admail_count', 'wc_admail_data', 'wc_admail');
DELETE FROM wp_termmeta WHERE meta_key IN ('wc_admail_count', 'wc_admail_data', 'wc_admail');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wc_admail_count', 'wc_admail_data', 'wc_admail');

