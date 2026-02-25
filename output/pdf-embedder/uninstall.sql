-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wppdf_review', 'wppdf_emb_activation', 'wppdf_emb_activation_premium', 'active_sitewide_plugins', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');

