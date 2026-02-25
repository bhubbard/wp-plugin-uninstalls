-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('WYT_Cookie-Time', 'WYT_need_key', 'WYT_key_value', 'WYT_all_cookie', 'WYT_Compatible', 'WYT_button-choose', 'WYT_button_title', 'WYT_img_width', 'WYT_img_height', 'WYT_Custom-Location', 'WYT_click-Location', 'WYT_xoffset', 'WYT_yoffset', 'WYT_start_id', 'WYT_succss_tips', 'WYT_faild_tips', 'WYT_zindex', 'WYT_Just-Admin', 'WYT_JS-Location');

