-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_shop_page_display', 'woocommerce_category_archive_display', 'woocommerce_hide_out_of_stock_items', 'ywraq_hide_add_to_cart', 'woocommerce_shop_page_id', 'woocommerce_cart_page_id', 'woocommerce_checkout_page_id', 'woocommerce_myaccount_page_id');
DELETE FROM wp_options WHERE option_name LIKE '%_plugin_activation_errors';
DELETE FROM wp_options WHERE option_name LIKE '%db_version';
DELETE FROM wp_options WHERE option_name LIKE '%db_installed';
DELETE FROM wp_options WHERE option_name LIKE '%plug_was_used';
DELETE FROM wp_options WHERE option_name LIKE '%_full_installed';
DELETE FROM wp_options WHERE option_name LIKE '%_opts_data';
DELETE FROM wp_options WHERE option_name LIKE '_overview_%';
DELETE FROM wp_options WHERE option_name LIKE '_subscribe_%';
DELETE FROM wp_options WHERE option_name LIKE '_rating_%';
DELETE FROM wp_options WHERE option_name LIKE '%_last__time_contact_send';
DELETE FROM wp_options WHERE option_name LIKE '%welcome_sent';
DELETE FROM wp_options WHERE option_name LIKE '%_unique_stats';
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('display_type', 'wcb2b_group', 'store_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('display_type', 'wcb2b_group', 'store_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('display_type', 'wcb2b_group', 'store_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('display_type', 'wcb2b_group', 'store_name');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-tour-hst';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-tour-hst';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-tour-hst';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-tour-hst';

