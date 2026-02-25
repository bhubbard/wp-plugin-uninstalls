-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_colors', 'woocommerce_colors_css', 'woocommerce_frontend_css_colors', 'woocommerce_admin_notices');

