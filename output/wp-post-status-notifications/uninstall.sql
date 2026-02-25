-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_post_status_post_types', 'wp_post_status_groups', 'wp_post_status_rules', 'wp_post_status_email');

