-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('websamurai_cp_auth_key', 'websamurai_cp_site_id', 'active_sitewide_plugins', 'websamurai_cp_connected_at', 'websamurai_cp_user_data', 'websamurai_cp_user_refreshed_at', 'websamurai_cp_site_synced_at');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_wp_page_template');

