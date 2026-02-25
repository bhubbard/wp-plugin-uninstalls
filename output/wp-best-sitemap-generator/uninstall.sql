-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpbs_secret_update_option', 'wpbs_include_post_type_post', 'wpbs_include_post_type_page');

