-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bodhi_svgs_settings', 'upload_space_check_disabled', 'bodhi_svgs_plugin_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('inline_featured_image');
DELETE FROM wp_usermeta WHERE meta_key IN ('inline_featured_image');
DELETE FROM wp_termmeta WHERE meta_key IN ('inline_featured_image');
DELETE FROM wp_commentmeta WHERE meta_key IN ('inline_featured_image');

