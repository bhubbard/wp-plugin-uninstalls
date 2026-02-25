-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('auhfc_db_ver', 'auhfc_settings_sitewide', 'auhfc_settings_homepage', 'auhfc_settings_article', 'auhfc_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_auhfc');
DELETE FROM wp_usermeta WHERE meta_key IN ('_auhfc');
DELETE FROM wp_termmeta WHERE meta_key IN ('_auhfc');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_auhfc');

