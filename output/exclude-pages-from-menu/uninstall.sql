-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('exclude_pages_from_menu', 'active_sitewide_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_epfm_meta_box_field');
DELETE FROM wp_usermeta WHERE meta_key IN ('_epfm_meta_box_field');
DELETE FROM wp_termmeta WHERE meta_key IN ('_epfm_meta_box_field');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_epfm_meta_box_field');

