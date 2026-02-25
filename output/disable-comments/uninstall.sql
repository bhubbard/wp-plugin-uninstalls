-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'disable_comments_sitewide_settings', 'disable_comments_options', 'disable_comments_post_types', 'disable_comment_version', 'wpins_allow_tracking', 'wpins_last_track_time', 'wpins_block_notice', 'wc_count_comments');
DELETE FROM wp_options WHERE option_name LIKE 'wpins_deactivation_reason_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpins_deactivation_details_%';

