-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('apaui_enable', 'apaui_mode', 'apaui_is_virtual', 'apaui_is_downloadable', 'apaui_tax', 'apaui_updatepost', 'wc_attribute_taxonomies');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('order');
DELETE FROM wp_usermeta WHERE meta_key IN ('order');
DELETE FROM wp_termmeta WHERE meta_key IN ('order');
DELETE FROM wp_commentmeta WHERE meta_key IN ('order');

