-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('enable_addons_globally', 'default_addon_state', 'require_addon_selection', 'enable_addon_tax', 'addon_tax_class');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_product_addons');
DELETE FROM wp_usermeta WHERE meta_key IN ('_product_addons');
DELETE FROM wp_termmeta WHERE meta_key IN ('_product_addons');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_product_addons');

