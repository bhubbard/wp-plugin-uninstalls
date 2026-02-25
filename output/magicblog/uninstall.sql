-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('magicblog_features', 'magicblog_settings', 'magicblog_query_monitor', 'magicblog_widgets', 'magicblog_version', 'magicblog_resolved_conflicts', 'magicblog_compatibility_issues', 'magicblog_theme_compatibility_checked', 'magicblog_theme_test_results');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('magicblog_subheader_dismissed', 'magicblog_elementor_notice_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('magicblog_subheader_dismissed', 'magicblog_elementor_notice_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('magicblog_subheader_dismissed', 'magicblog_elementor_notice_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('magicblog_subheader_dismissed', 'magicblog_elementor_notice_dismissed');

