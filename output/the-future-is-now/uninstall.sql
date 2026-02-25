-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('futurenow_show_admin_as_published', 'futurenow_show_future_in_archives', 'futurenow_show_future_in_calendar', 'futurenow_post_types');

