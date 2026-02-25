-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gatekeeper_active', 'gatekeeper_placeholder_redirect_page', 'gatekeeper_placeholder_behavior', 'gatekeeper_allowadmins', 'gatekeeper_autoprotect_adminip', 'gatekeeper_adminip', 'gatekeeper_whitelist', 'gatekeeper_blacklist_behavior', 'gatekeeper_blacklist_redirect_page', 'gatekeeper_blacklist', 'gatekeeper_stats_blacklist_blocks', 'gatekeeper_stats_whitelist_views', 'gatekeeper_stats_offline_redirects');

