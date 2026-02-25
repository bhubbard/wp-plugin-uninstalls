-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('onlineleaf_engines', 'onlineleaf_language', 'onlineleaf_standbytime');

