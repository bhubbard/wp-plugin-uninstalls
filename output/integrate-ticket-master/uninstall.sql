-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ank_wp_ticket_debug_mode', 'ank_wp_ticket_api_key', 'ank_wp_ticket_api_url', 'ank_wp_ticket_event_sort_by', 'ank_wp_ticket_count_event_page', 'ank_wp_ticket_country');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '_wp_log_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_wp_log_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_wp_log_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wp_log_%';

