-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cust4ha_page_id', 'cust4ha_logging_enabled', 'cust4ha_max_logs', 'cust4ha_redirect_to_home', 'cust4ha_noindex');

