-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kwli_add_in_list', 'kwli_add_in_list_class', 'kwli_add_in_single', 'kwli_add_in_single_class');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_kwl_items');
DELETE FROM wp_usermeta WHERE meta_key IN ('_kwl_items');
DELETE FROM wp_termmeta WHERE meta_key IN ('_kwl_items');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_kwl_items');

