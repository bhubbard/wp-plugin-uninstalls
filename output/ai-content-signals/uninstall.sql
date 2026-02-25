-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ayudawp_acs_settings', 'ayudawp_acs_activation_notice', 'ayudawp_acs_robots_cache');

