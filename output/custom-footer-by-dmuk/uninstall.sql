-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dmuk_foot_nominated_page', 'dmuk_foot_expected_theme', 'dmuk_foot_theme_change_dismissed', 'dmuk_foot_analysis_string', 'dmuk_foot_search_replace_target_id', 'dmuk_foot_search_replace_activate');

