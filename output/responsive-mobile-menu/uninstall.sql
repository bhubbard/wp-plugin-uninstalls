-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wbb_ocm_trigger_icon', 'wbb_ocm_css_selector', 'wbb_ocm_background', 'wbb_ocm_background_hover', 'wbb_ocm_borders', 'wbb_ocm_font_color', 'wbb_ocm_font_color_hover', 'wbb_ocm_font_family', 'wbb_ocm_devices_desktop', 'wbb_ocm_devices_laptop', 'wbb_ocm_devices_tablet', 'wbb_ocm_devices_mobile');

