-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('loco_settings', 'update_plugins', 'theme_roots');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('loco_prefs');
DELETE FROM wp_usermeta WHERE meta_key IN ('loco_prefs');
DELETE FROM wp_termmeta WHERE meta_key IN ('loco_prefs');
DELETE FROM wp_commentmeta WHERE meta_key IN ('loco_prefs');

