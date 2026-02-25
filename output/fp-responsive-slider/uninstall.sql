-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('$maxWidth_op', '$speed_op', '$img_width_op', '$img_height_op', '$slide_timeout_op', '$fp_pager_op', '$slide_limit_op', '$control_arrow_op', '$hover_control_op', '$auto_play_op', '$random_play_op');

