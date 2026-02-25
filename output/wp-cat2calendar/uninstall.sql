-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_cat2cal_use_permalinks', 'wp_cat2cal_use_default_css', 'wp_cat2cal_show_future_posts');

