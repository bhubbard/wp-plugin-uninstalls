-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bprn_options', 'bprn_display_name_options', 'bprn_members_options', 'bprn_search_options');

