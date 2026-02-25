-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vsrc_title', 'vsrc_select_num_user', 'vsrc_dis_num_user', 'vsrc_dis_num_height', 'vsrc_dis_image_or_name', 'vsrc_select_character', 'vsrc_speed', 'vsrc_waitseconds');

