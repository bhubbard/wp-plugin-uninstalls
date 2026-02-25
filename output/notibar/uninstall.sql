-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('njt_nofi_review', 'njt_nofi_open_after_day', 'njt_nofi_text_wpml_translate', 'njt_nofi_text_mobile_wpml_translate', 'njt_nofi_lb_text_wpml_translate', 'njt_nofi_lb_text_mobile_wpml_translate', 'njt_nofi_lb_url_wpml_translate', 'njt_nofi_lb_url_mobile_wpml_translate', 'njt_is_override_theme_mod', 'njt_is_override_theme_mod_ver14', 'njt_nofi_first_time_active', 'njt_nofi_version');

