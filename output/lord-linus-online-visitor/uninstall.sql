-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lord_total_visitor', 'lordlinus_show_ip', 'lordlinus_show_total');

