-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ssa_ec', 'perfmatters_options', 'ssa_error_notices', 'ssa_dismissed_notices', 'ssa_pinned_notices', 'ssa_versions', 'admin_phone', 'ssa_export_backups', 'ssa_debug_level', 'ssa_version_changes', 'ssa_plugin_version', 'DRA_route_whitelist', 'health-check-disable-plugin-hash', 'health-check-allowed-plugins', 'health-check-default-theme', 'health-check-current-theme', 'health-check-backup-plugin-list', 'health-check-dashboard-notices', 'auto_core_update_failed', 'rewrite_rules', 'ssa/cache_version', 'ssa/recent_availability_query_args', 'ssa/cache/lock_global', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');
DELETE FROM wp_options WHERE option_name LIKE '%_db_version';
DELETE FROM wp_options WHERE option_name LIKE 'ssa/cache/lock_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_EventVenueID', '_EventOrganizerID', 'health-check');
DELETE FROM wp_usermeta WHERE meta_key IN ('_EventVenueID', '_EventOrganizerID', 'health-check');
DELETE FROM wp_termmeta WHERE meta_key IN ('_EventVenueID', '_EventOrganizerID', 'health-check');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_EventVenueID', '_EventOrganizerID', 'health-check');

