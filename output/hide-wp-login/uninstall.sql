-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hmwl_hide_option', 'hmwl_slug_name', 'hmwl_login_key', 'hmwl_redirect_slug', 'hmwl_hide_elementor');

