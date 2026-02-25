-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('a1tools_cache_expiry', 'a1tools_form_enabled', 'a1tools_form_secret', 'a1tools_form_board_id', 'a1tools_form_group_id', 'a1tools_site_variables');

