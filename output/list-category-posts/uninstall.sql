-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('numberposts', 'lcp_pagination', 'lcp_orderby', 'lcp_order');

