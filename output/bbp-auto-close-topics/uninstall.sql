-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_tba_bbp_auto_close_topics', '_tba_bbp_auto_close_age');

