-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sra_show_posts_at_home', 'schat_color', 'schat_theme', 'schat_notification', 'simple_chat_version');

