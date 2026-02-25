-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kw_cssad', 'kw_eadt', 'kw_adt', 'kw_top_target', 'kw_top_height', 'kw_eadl', 'kw_adl', 'kw_left_target', 'kw_left_width', 'kw_eadr', 'kw_adr', 'kw_right_target', 'kw_right_width');

