-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_igniter_shortcode_posts', 'wp_igniter_page_override', 'wp_igniter_ci_path', 'wp_igniter_handle_404', 'wp_igniter_native_constants', 'wp_igniter_custom_apppath', 'wp_igniter_custom_sysfolder', 'wp_igniter_ci_urihook');

