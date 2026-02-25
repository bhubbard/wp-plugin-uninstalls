-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cyber_disp_position', 'cyber_targetleft', 'cyber_targetright', 'cyber_targetop', 'cyber_targetbot', 'cyber_shortcode', 'cyber_page_show', 'cyber_height', 'cyber_width');

