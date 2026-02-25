-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gaoop_editor_button', 'gaoo_property', 'gaoop_property', 'gaoop_yoast', 'gaoo_yoast', 'gaoop_banner', 'gaoop_hide', 'gaoop_opt_out_text', 'gaoop_opt_out_shortcode_integration', 'gaoop_custom_styles', 'gaoop_opt_out_cookie_set_text');

