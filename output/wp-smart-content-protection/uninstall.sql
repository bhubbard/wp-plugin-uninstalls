-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpscp_right_click', 'wpscp_copy', 'wpscp_cut', 'wpscp_paste');

