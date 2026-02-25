-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_tax_round_at_subtotal', 'woocommerce_tax_display_cart', 'epow_data', 'woocommerce_tax_display_shop', 'woocommerce_currency_pos', 'villatheme_hide_admin_toolbar', 'wc_featured_products', 'villatheme_call', 'villatheme_ads', 'villatheme_notices', 'villatheme_called');
DELETE FROM wp_options WHERE option_name LIKE '%_dismiss_notices';
DELETE FROM wp_options WHERE option_name LIKE '%_wp_reviewed';
DELETE FROM wp_options WHERE option_name LIKE '%_start_use';
DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%';
DELETE FROM wp_options WHERE option_name LIKE '%_hide_notices';
DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('epow_global_options', 'epow_form_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('epow_global_options', 'epow_form_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('epow_global_options', 'epow_form_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('epow_global_options', 'epow_form_data');

