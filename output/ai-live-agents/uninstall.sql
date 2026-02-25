-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ailiveagents_bot_id', 'ailiveagents_exclude_pages');

