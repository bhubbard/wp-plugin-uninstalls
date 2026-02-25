-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mysat_custom_bg_color', 'mysat_custom_login_bg_image', 'mysat_custom_login_logo', 'mysat_custom_login_url', 'mysat_custom_login_title', 'mysat_remove_meta_generator', 'mysat_disable_gutenberg', 'mysat_remove_wp_title', 'mysat_remove_category_slug');

