-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('internet_connection_status', 'ics_review_notice_dismissed');

