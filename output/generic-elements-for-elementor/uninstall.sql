-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('generic_gsap_enable_option', 'generic_enable_header_tpl_option', 'generic_enable_footer_tpl_option', 'generic_bootstrap_option', 'generic_fontawesome_option', 'generic_magnific_popup_option', 'generic_odometer_option', 'generic_appear_option', 'generic_waypoints_option', 'generic_animate_option', 'generic_wow_option', 'generic_swiper_option', 'generic_meanmenu_option', 'generic_el_params', 'elementor_disable_color_schemes', 'elementor_disable_typography_schemes', 'elementor_cpt_support');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_generic_el_meta_active_check', '_generic_el_bar_elementor_type_id', 'generic_el_params', 'enable_dark_mood', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_generic_el_meta_active_check', '_generic_el_bar_elementor_type_id', 'generic_el_params', 'enable_dark_mood', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_generic_el_meta_active_check', '_generic_el_bar_elementor_type_id', 'generic_el_params', 'enable_dark_mood', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_generic_el_meta_active_check', '_generic_el_bar_elementor_type_id', 'generic_el_params', 'enable_dark_mood', '_wp_attachment_image_alt');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_generic_el_meta_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_generic_el_meta_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_generic_el_meta_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_generic_el_meta_%';

