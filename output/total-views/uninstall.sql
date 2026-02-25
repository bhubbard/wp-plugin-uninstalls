-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('total_views_total', 'total_views_label', 'total_views_bold', 'total_views_italic', 'total_views_underline', 'total_views_color');

