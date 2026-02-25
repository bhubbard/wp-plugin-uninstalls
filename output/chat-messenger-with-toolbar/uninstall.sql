-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woc_credit', 'woc_sitewide', 'woc_sitewide_turned_off');

