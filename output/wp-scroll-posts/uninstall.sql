-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpsp_nop', 'wpsp_nops', 'wpsp_mnop', 'wpsp_cat', 'wpsp_direction', 'wpsp_readmore', 'wpsp_enable', 'wpsp_mousepause', 'wpsp_speed', 'wpsp_ptime', 'wpsp_thumbnail_enable', 'wpsp_title_enable', 'wpsp_date_enable', 'wpsp_excerpt_enable', 'wpsp_readmore_enable', 'wpsp_c_len');

