-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpscp_nop', 'wpscp_mnop', 'wpscp_cat', 'wpscp_readmore', 'wpscp_enable', 'wpscp_thumbnail_enable', 'wpscp_title_enable', 'wpscp_date_enable', 'wpscp_excerpt_enable', 'wpscp_readmore_enable', 'wpscp_c_len', 'wpscp_direction', 'wpscp_mousepause', 'wpscp_speed', 'wpscp_ptime');

