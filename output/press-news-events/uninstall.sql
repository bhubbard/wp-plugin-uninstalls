-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rewrite_rules', 'pne_settings_press_releases', 'pne_press_release_boilderplate', 'pne_admin_notices', 'pne_settings_auto_archive', 'pne_settings_inject_meta', 'pne_flush_rules');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_location', '_all_day', '_starts', '_ends', '_link', '_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('_location', '_all_day', '_starts', '_ends', '_link', '_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('_location', '_all_day', '_starts', '_ends', '_link', '_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_location', '_all_day', '_starts', '_ends', '_link', '_date');

