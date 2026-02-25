-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ncr_schema_version', 'naticore_db_version', 'naticore_settings', 'naticore_remove_data_on_uninstall', 'naticore_last_integrity_check', 'naticore_last_orphaned_check', 'naticore_orphaned_count', 'naticore_activation_notice', 'naticore_onboarding_done', 'naticore_integrity_notice', 'naticore_orphaned_notice_shown');

