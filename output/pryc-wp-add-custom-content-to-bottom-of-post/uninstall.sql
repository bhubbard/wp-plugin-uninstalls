-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pryc_wp_add_custom_content_to_bottom_of_post_settings');

