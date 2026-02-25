-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pisg_title', 'pisg_maxsquare', 'pisg_duration', 'pisg_slidespeed', 'pisg_random', 'pisg_type');

