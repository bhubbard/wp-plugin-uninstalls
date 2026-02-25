-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcgt_enable_goal', 'wcgt_global_word_goal', 'wcgt_bar_color', 'wcgt_bar_height', 'wcgt_show_percentage', 'wcgt_review_notice_dismissed', 'wcgt_activation_time', 'wcgt_pro_tip_notice_dismissed', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wcgt_goal', '_wcgt_last_goal_date', '_wcgt_streak', '_wcgt_longest_streak');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wcgt_goal', '_wcgt_last_goal_date', '_wcgt_streak', '_wcgt_longest_streak');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wcgt_goal', '_wcgt_last_goal_date', '_wcgt_streak', '_wcgt_longest_streak');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wcgt_goal', '_wcgt_last_goal_date', '_wcgt_streak', '_wcgt_longest_streak');

