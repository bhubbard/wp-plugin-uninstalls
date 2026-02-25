-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shipbubble_options', 'shipbubble_db_update_time', 'shipbubble_first_time_redirection');

