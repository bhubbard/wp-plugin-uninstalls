-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('path_pilot_goal_pages', 'path_pilot_conversion_pages', 'path_pilot_min_hops', 'path_pilot_ignored_user_roles', 'path_pilot_insights_only', 'path_pilot_ready', 'path_pilot_path_stats', 'path_pilot_activation_date', 'path_pilot_cta_text', 'path_pilot_recommend_label', 'path_pilot_dev_mode', 'path_pilot_chat_label', 'path_pilot_allowed_content_types', 'path_pilot_do_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('path_pilot_setup_notice_dismissed', 'path_pilot_synopsis');
DELETE FROM wp_usermeta WHERE meta_key IN ('path_pilot_setup_notice_dismissed', 'path_pilot_synopsis');
DELETE FROM wp_termmeta WHERE meta_key IN ('path_pilot_setup_notice_dismissed', 'path_pilot_synopsis');
DELETE FROM wp_commentmeta WHERE meta_key IN ('path_pilot_setup_notice_dismissed', 'path_pilot_synopsis');

