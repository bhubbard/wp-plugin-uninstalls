-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hamazon_option_updated', 'hamazon_post_types', 'hamazon_load_css', 'wp_tmkm_admin_options');

