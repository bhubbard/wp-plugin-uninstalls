-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wapt_current_theme', 'wapt_user_agents', 'wapt_current_version');

