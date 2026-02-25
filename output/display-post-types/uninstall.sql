-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dpt_shortcode_options', 'dpt-admin-notice', 'dpt_custom_fields_with_post_types');

