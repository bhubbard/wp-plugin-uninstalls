-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jcorgltu_active', 'jcorgltu_facebook_app_id', 'jcorgltu_show_faces', 'jcorgltu_width', 'jcorgltu_font', 'jcorgltu_colorscheme', 'jcorgltu_hide', 'jcorgltu_text_to_display', 'jcorgltu_disableon_mobile', 'jcorgltu_disableon_tablet');

