-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('showguestcounts', 'showguestmyname', 'Showguests_guests_info');

