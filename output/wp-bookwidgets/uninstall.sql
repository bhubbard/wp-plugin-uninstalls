-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bw_lti_enabled', 'bw_lti_consumer_key', 'bw_lti_consumer_secret');

