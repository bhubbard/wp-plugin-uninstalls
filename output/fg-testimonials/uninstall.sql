-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fgts_numofslide_desktop', 'fgts_numofslide_tablet', 'fgts_numofslide_mobile', 'fgts_controls_nav', 'fgts_control_dots', 'fgts_loop_set', 'fgts_autoplay', 'fgts_autoplayhover', 'fgts_numof_smartspeed', 'fgts_numofposts', 'fgts_img_chkbx', 'fgts_designation_chkbx', 'fgts_viewbtn', 'fgts_viewbtn_link', 'fgts_shortcode_field');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('fgts_testimonial_fields');
DELETE FROM wp_usermeta WHERE meta_key IN ('fgts_testimonial_fields');
DELETE FROM wp_termmeta WHERE meta_key IN ('fgts_testimonial_fields');
DELETE FROM wp_commentmeta WHERE meta_key IN ('fgts_testimonial_fields');

