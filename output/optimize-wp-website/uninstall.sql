-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('owpw_remove_wp_embed', 'owpw_remove_jquery_migrate', 'owpw_remove_commnet_reply', 'owpw_remove_generator', 'owpw_page_specific_block');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_oww_css_postion', '_oww_custom_css', '_oww_css_file');
DELETE FROM wp_usermeta WHERE meta_key IN ('_oww_css_postion', '_oww_custom_css', '_oww_css_file');
DELETE FROM wp_termmeta WHERE meta_key IN ('_oww_css_postion', '_oww_custom_css', '_oww_css_file');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_oww_css_postion', '_oww_custom_css', '_oww_css_file');

