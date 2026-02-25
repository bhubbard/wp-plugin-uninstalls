-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pbp_screen_options', 'pbp_help_tab', 'pbp_right_now', 'pbp_recent_comments', 'pbp_recent_drafts', 'pbp_remove_plugins', 'pbp_incoming_links', 'pbp_remove_quickpress', 'pbp_remove_wpblog', 'pbp_other_wp_news', 'pbp_remove_admin_bar', 'pbp_remove_wp_logo', 'pbp_remove_about_wplink', 'pbp_remove_wporg_link', 'pbp_remove_doc_link', 'pbp_remove_support_link', 'pbp_remove_feedback_link', 'pbp_login_logo', 'pbp_custom_login_message', 'pbp_custom_reg_message', 'bdc_ip_lock_enable', 'pbp_post_views', 'pbp_view_in_editor', 'pbp_post_view_pos');

