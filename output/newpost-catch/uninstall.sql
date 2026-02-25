-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('newpost_catch', 'widget_newpostcatch', 'npc_search_posts');

