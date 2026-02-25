-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ampanalyticssupport', 'ampanalyticssupport_pageview', 'ampanalyticssupport_consent', 'ampanalyticssupport_webvitals', 'ampanalyticssupport_performance');

