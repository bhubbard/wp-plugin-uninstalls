-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pokertournaments_style', 'pokertournaments_nofollow', 'pokertournaments_active_hall', 'pokertournaments_affil_link', 'pokertournaments_time_offset', 'halls_update', 'poker_halls');

