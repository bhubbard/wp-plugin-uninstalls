-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gtbbootstrap_version', 'design-package_fa_license', 'design-package_fa_license_network', 'gtbbootstrap_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('gtb_hide_title', 'gtb_wrap_title', 'gtb_class_title', 'editor_width', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('gtb_hide_title', 'gtb_wrap_title', 'gtb_class_title', 'editor_width', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('gtb_hide_title', 'gtb_wrap_title', 'gtb_class_title', 'editor_width', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('gtb_hide_title', 'gtb_wrap_title', 'gtb_class_title', 'editor_width', '_wp_page_template');

