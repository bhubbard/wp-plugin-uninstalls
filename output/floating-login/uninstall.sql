-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fl_login_url', 'fl_login_landing_url', 'fl_register_url', 'fl_profile_url', 'fl_logout_url', 'fl_logout_landing_url', 'fl_bg_color', 'fl_border_color', 'fl_text_color', 'fl_border_width', 'fl_register_display', 'fl_profile_display', 'fl_hover_color', 'fl_float_position', 'fl_profile_text');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('fl_login_display');
DELETE FROM wp_usermeta WHERE meta_key IN ('fl_login_display');
DELETE FROM wp_termmeta WHERE meta_key IN ('fl_login_display');
DELETE FROM wp_commentmeta WHERE meta_key IN ('fl_login_display');

