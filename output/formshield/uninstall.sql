-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('formshield_seen_messages', 'formshield_email_queue', 'formshield_last_periodic_report', 'et_theme_builder', 'formshield_options', 'formshield_ip_blacklist', 'wp-human-presence', 'formshield_version', 'ninja_forms_version', 'ninja_forms_load_deprecated', 'dcd_divi_scan');
DELETE FROM wp_options WHERE option_name LIKE '%_updated';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpforms_entries_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpforms_entries_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpforms_entries_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpforms_entries_count');

