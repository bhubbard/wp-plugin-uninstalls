-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nuclear_engagement_settings', 'nuclear_engagement_setup', 'nuclen_custom_css_version', 'nuclen_bootstrap_error', 'nuclen_theme_settings', 'nuclen_meta_migration_done', 'nuclen_meta_migration_error', 'nuclen_enabled_modules', 'nuclen_toc_auto_insert', 'nuclen_toc_sticky_enabled', 'nuclen_toc_min_headings', 'nuclear_engagement_encryption_key', 'nuclen_timeout_log', 'nuclen_theme_migration_completed', 'nuclear_engagement_settings_backup', 'nuclen_settings', 'nuclen_settings_backup', 'nuclear_engagement_naming_migration_completed', 'nuclen_recent_completions', 'nuclear_engagement_allowed_post_types', 'nuclen_cleanup_results', 'nuclen_plugin_activation_redirect', 'nuclen_optin_table_exists', 'nuclen_active_theme', 'nuclen_theme_list');
DELETE FROM wp_options WHERE option_name LIKE 'nuclen_bulk_job_%';
DELETE FROM wp_options WHERE option_name LIKE 'nuclen_batch_%';
DELETE FROM wp_options WHERE option_name LIKE 'nuclen_batch_results_%';
DELETE FROM wp_options WHERE option_name LIKE '%bulk_jobs';
DELETE FROM wp_options WHERE option_name LIKE '%s';
DELETE FROM wp_options WHERE option_name LIKE 'nuclen_timeout_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('nuclen_quiz_protected', 'nuclen-quiz-data', 'nuclen-summary-data', 'dismissed_wp_pointers', 'nuclen_toc_disabled', '_elementor_edit_mode', '_elementor_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('nuclen_quiz_protected', 'nuclen-quiz-data', 'nuclen-summary-data', 'dismissed_wp_pointers', 'nuclen_toc_disabled', '_elementor_edit_mode', '_elementor_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('nuclen_quiz_protected', 'nuclen-quiz-data', 'nuclen-summary-data', 'dismissed_wp_pointers', 'nuclen_toc_disabled', '_elementor_edit_mode', '_elementor_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('nuclen_quiz_protected', 'nuclen-quiz-data', 'nuclen-summary-data', 'dismissed_wp_pointers', 'nuclen_toc_disabled', '_elementor_edit_mode', '_elementor_data');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'nuclen_pointer_dismissed_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'nuclen_pointer_dismissed_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'nuclen_pointer_dismissed_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'nuclen_pointer_dismissed_%';

