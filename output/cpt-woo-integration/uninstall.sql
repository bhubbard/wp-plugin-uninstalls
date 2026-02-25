-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cptwooint_settings', 'woocommerce_prices_include_tax', 'woocommerce_tax_based_on', 'woocommerce_tax_round_at_subtotal', 'cptwooint_plugin_version', 'cptwooint_plugin_activation_time', 'cptwooint_spare_me', 'cptwooint_remind_me', 'cptwooint_rated');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_price', '_regular_price', '_sale_price', '_wc_payment_id', 'email', 'first_name', 'last_name', 'phone', 'contacts');
DELETE FROM wp_usermeta WHERE meta_key IN ('_price', '_regular_price', '_sale_price', '_wc_payment_id', 'email', 'first_name', 'last_name', 'phone', 'contacts');
DELETE FROM wp_termmeta WHERE meta_key IN ('_price', '_regular_price', '_sale_price', '_wc_payment_id', 'email', 'first_name', 'last_name', 'phone', 'contacts');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_price', '_regular_price', '_sale_price', '_wc_payment_id', 'email', 'first_name', 'last_name', 'phone', 'contacts');

