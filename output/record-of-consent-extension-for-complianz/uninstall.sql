-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rocext_terms_accepted', 'rocext_terms_accepted_date', 'rocext_terms_accepted_by', 'rocext_show_full_history', 'rocext_visible_columns', 'rocext_user_labels', 'rocext_auto_cleanup', 'rocext_retention_period', 'rocext_policy_version', 'rocext_integrity_salt', 'rocext_table_suffix', 'rocext_date_format', 'rocext_time_format', 'rocext_apply_display_to_exports', 'rocext_geoip_enabled', 'rocext_menu_location', 'rocext_wizard_state', 'rocext_invalid_records', 'rocext_verification_result');
DELETE FROM wp_options WHERE option_name LIKE 'rocext_admin_messages_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rocext_history_warning_dismissed', 'rocext_salt_notice_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('rocext_history_warning_dismissed', 'rocext_salt_notice_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('rocext_history_warning_dismissed', 'rocext_salt_notice_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rocext_history_warning_dismissed', 'rocext_salt_notice_dismissed');

