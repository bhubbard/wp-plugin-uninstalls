-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('chrs_eztexting_oauth_tokens', 'chrs_eztexting_admin_notifications', 'gravityformsaddon_chrs-eztexting-sync-for-gravityforms_settings', 'chrs_eztexting_logs', 'chrs_eztexting_failed_entries', 'chrs_eztexting_groups', 'chrs_eztexting_contact_fields');

