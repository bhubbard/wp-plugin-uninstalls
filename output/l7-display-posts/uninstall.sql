-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_ptp_query_atts_options';
DELETE FROM wp_options WHERE option_name LIKE '%_ptp_cached_post';

