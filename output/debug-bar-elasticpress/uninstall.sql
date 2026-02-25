-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ep_enable_logging', 'ep_query_log_by_status', 'ep_query_log_by_context');

