-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wbst_tvs_box_end_date', 'wbst_tvs_box_position', 'wbst_tvs_box_bg_color', 'wbst_tvs_box_color', 'wbst_tvs_box_text', 'wbst_tvs_box_hide', 'wbst_tvs_box_once_time', 'wbst_tvs_box_message');

