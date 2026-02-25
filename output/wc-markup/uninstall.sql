-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_markup_sale_price', 'mcfwc_plugin_options');
DELETE FROM wp_options WHERE option_name LIKE 'wc_markup_admin_error_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_price_for_markup', '_markup_pricing_type', 'markup_price_type', 'markup_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('_price_for_markup', '_markup_pricing_type', 'markup_price_type', 'markup_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('_price_for_markup', '_markup_pricing_type', 'markup_price_type', 'markup_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_price_for_markup', '_markup_pricing_type', 'markup_price_type', 'markup_price');

