-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tm_regex_options', 'tm_regex_opt_ptrns', 'tm_regex_opt_repls');

