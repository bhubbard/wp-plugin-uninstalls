-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('drgnff_wp_stage_switcher__default_environment', 'drgnff_wp_stage_switcher__environments');

