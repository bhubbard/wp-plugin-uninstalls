-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcvs_is_installed', 'active_sitewide_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_flash_messages';
DELETE FROM wp_options WHERE option_name LIKE '_transient_%';
DELETE FROM wp_options WHERE option_name LIKE '%_version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('hover_image', 'color', 'image', 'label');
DELETE FROM wp_usermeta WHERE meta_key IN ('hover_image', 'color', 'image', 'label');
DELETE FROM wp_termmeta WHERE meta_key IN ('hover_image', 'color', 'image', 'label');
DELETE FROM wp_commentmeta WHERE meta_key IN ('hover_image', 'color', 'image', 'label');

