-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('analytical_spam_filter_settings_db', 'analytical_spam_filter_salt', 'analytical_spam_filter_hash_field_id', 'analytical_spam_filter_honeypot_field_id', 'analytical_spam_filter_duration_field_id', 'analytical_spam_filter_database_version');

