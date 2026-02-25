-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('CCWPSC_VERSION', 'CCWPSC_VERSION_UPDATE', 'ccwpsc_caching_options', 'cc_maxmind_status');

