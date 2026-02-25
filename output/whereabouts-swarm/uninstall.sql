-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('whereabouts_swarm_current_location', 'whereabouts_swarm_settings', 'whereabouts_swarm_auth_code');

