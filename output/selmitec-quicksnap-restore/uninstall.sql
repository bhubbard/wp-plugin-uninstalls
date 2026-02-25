-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('selmiqsr_include_uploads', 'selmiqsr_prune_same_name', 'selmiqsr_exclude_patterns', 'selmiqsr_tg_enabled', 'selmiqsr_tg_bot_token', 'selmiqsr_tg_chat_id');

