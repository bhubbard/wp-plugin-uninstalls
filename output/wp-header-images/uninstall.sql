-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_header_images', 'wphi_gluri_slider', 'wphi_header_videos', 'wphi_sidebar_settings', 'wphi_template_custom', 'wphi_styling', 'wphi_dom', 'wphi_template', 'wphi_post_type_selection', 'wphi_on_off_options');

