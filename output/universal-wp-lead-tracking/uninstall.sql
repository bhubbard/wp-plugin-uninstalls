-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('uwplt_ga', 'uwplt_gtag', 'uwplt_custom_event_name');

