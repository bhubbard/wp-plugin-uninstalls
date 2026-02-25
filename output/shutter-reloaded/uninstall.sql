-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('srel_main', 'srel_options', 'srel_excluded', 'srel_included');

