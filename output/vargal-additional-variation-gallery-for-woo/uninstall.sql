-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'vargal_params', 'villatheme_hide_admin_toolbar', 'villatheme_call', 'villatheme_notices', 'villatheme_called', 'villatheme_ads');
DELETE FROM wp_options WHERE option_name LIKE '%_dismiss_notices';
DELETE FROM wp_options WHERE option_name LIKE '%_wp_reviewed';
DELETE FROM wp_options WHERE option_name LIKE '%_start_use';
DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%';
DELETE FROM wp_options WHERE option_name LIKE '%_hide_notices';
DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_exmage_external_oembed_src', '_exmage_external_url', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_exmage_external_oembed_src', '_exmage_external_url', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_exmage_external_oembed_src', '_exmage_external_url', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_exmage_external_oembed_src', '_exmage_external_url', '_wp_attachment_image_alt');

