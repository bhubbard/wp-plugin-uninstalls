-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wb_ffb_form_shortcode', 'wb_ffb_bubble_style', 'wb_ffb_custom_css', 'wb_ffb_bubble_text');

