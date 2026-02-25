-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_tax_display_cart', 'wapf_add_to_cart_text', 'wapf_settings_show_in_cart', 'wapf_settings_show_in_checkout', 'active_sitewide_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wapf_fieldgroup');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wapf_fieldgroup');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wapf_fieldgroup');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wapf_fieldgroup');

