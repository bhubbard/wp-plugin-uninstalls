-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('comments_firewall_options', 'comments_firewall_version', 'comments_firewall_activated', 'wpcs_stats', 'wpcs_last_stats_commit', 'wpcs_pending_stats');

