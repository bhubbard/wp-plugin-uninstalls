-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp-human-presence', 'ninja_forms_version', 'ninja_forms_load_deprecated', 'wp-human-presence-upgrade-3-4-6', 'human_presence_license');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpforms_entries_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpforms_entries_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpforms_entries_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpforms_entries_count');

