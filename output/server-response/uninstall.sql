-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('remove_wp_json', 'remove_rest_output_link_header', 'remove_wp_shortlink_header', 'create_expires');

