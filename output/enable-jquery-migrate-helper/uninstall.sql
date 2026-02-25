-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jqmh_logs', '_jquery_migrate_downgrade_version', '_jquery_migrate_public_deprecation_logging', '_jquery_migrate_modern_deprecations', '_jquery_migrate_has_auto_downgraded', '_jquery_migrate_deprecations_dismissed_notice', '_jquery_migrate_dismissed_notice', 'jqmh_last_log_time', '_jquery_migrate_previous_deprecations_dismissed_notice');

