-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fz_fab_activate', 'fz_fab_type', 'fz_fab_position', 'fz_fab_main_img_id', 'fz_fab_main_color', 'fz_fab_main_bg_color', 'fz_fab_sub_btns');

