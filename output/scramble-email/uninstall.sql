-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('scem_parse_content', 'scem_zone', 'scem_posttype');

