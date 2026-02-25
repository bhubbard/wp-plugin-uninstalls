-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eesymodi_time', 'eesymodi_interval', 'eesymodi_selected_posts', 'eesymodi_last_update_date');

