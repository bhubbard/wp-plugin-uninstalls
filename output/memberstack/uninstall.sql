-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('memberstack_wp_app_id', 'memberstack_app_id', 'memberstack_wp_gated_content', 'memberstack_wp_gated_content');

