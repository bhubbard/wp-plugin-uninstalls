-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dam_settings_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('record_number', 'asset_version', 'drive_url', 'live_url', 'download_url', 'license_key', 'total_view', 'total_download', 'account_credentials', 'private_note', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('record_number', 'asset_version', 'drive_url', 'live_url', 'download_url', 'license_key', 'total_view', 'total_download', 'account_credentials', 'private_note', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('record_number', 'asset_version', 'drive_url', 'live_url', 'download_url', 'license_key', 'total_view', 'total_download', 'account_credentials', 'private_note', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('record_number', 'asset_version', 'drive_url', 'live_url', 'download_url', 'license_key', 'total_view', 'total_download', 'account_credentials', 'private_note', '_wp_attachment_image_alt');

