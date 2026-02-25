-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_currency', 'wcu_options_pro', 'wcfm_page_options', 'woocommerce_price_num_decimals', 'rg_gforms_currency', 'woocommerce_shop_page_id', 'woocommerce_currency_pos');
DELETE FROM wp_options WHERE option_name LIKE '%_plugin_activation_errors';
DELETE FROM wp_options WHERE option_name LIKE '%db_version';
DELETE FROM wp_options WHERE option_name LIKE '%orders_currencies';
DELETE FROM wp_options WHERE option_name LIKE '%plug_was_used';
DELETE FROM wp_options WHERE option_name LIKE '%db_installed';
DELETE FROM wp_options WHERE option_name LIKE '%_full_installed';
DELETE FROM wp_options WHERE option_name LIKE '%_opts_data';
DELETE FROM wp_options WHERE option_name LIKE '%_last__time_contact_send';
DELETE FROM wp_options WHERE option_name LIKE '%welcome_sent';
DELETE FROM wp_options WHERE option_name LIKE '%_unique_stats';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE 'wcu_currency_unavailable_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'wcu_currency_unavailable_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'wcu_currency_unavailable_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wcu_currency_unavailable_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-tour-hst';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-tour-hst';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-tour-hst';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-tour-hst';

