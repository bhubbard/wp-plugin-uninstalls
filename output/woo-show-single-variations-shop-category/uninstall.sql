-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gmwsvs_enable_setting', 'gmwsvs_hide_parent_product', 'gmwsvs_exclude_cat');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wssvsc_custom_name', '_wssvsc_excludeenalls', 'gmwsvs_is_tax_setup', '_wwsvsc_exclude_product_single', '_wwsvsc_exclude_product_parent');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wssvsc_custom_name', '_wssvsc_excludeenalls', 'gmwsvs_is_tax_setup', '_wwsvsc_exclude_product_single', '_wwsvsc_exclude_product_parent');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wssvsc_custom_name', '_wssvsc_excludeenalls', 'gmwsvs_is_tax_setup', '_wwsvsc_exclude_product_single', '_wwsvsc_exclude_product_parent');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wssvsc_custom_name', '_wssvsc_excludeenalls', 'gmwsvs_is_tax_setup', '_wwsvsc_exclude_product_single', '_wwsvsc_exclude_product_parent');

