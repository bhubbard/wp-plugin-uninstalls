-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rcb_hide_unpub', 'rcb_enable_widget', 'rcb_css_metakeys');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_edit_mode');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_edit_mode');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_edit_mode');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_edit_mode');

