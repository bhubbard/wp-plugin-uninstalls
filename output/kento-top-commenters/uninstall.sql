-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('top_commenters_widget_title', 'top_commenters_widget_number', 'ktc_style');

