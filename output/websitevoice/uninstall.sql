-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('script', 'show_only_posts', 'user_id', 'inline_script', 'websitevoice_admin_notice');

