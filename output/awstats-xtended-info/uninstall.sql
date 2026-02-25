-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('awext_ishome', 'awext_issingle', 'awext_ispage', 'awext_isarchive', 'awext_issearch', 'awext_is404');

