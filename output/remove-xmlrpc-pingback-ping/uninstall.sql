-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rxpp_blocked_methods_count', 'blocked_pingback_ping');

