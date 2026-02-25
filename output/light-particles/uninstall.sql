-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_particles_quantity', 'wp_particles_speed', 'wp_particles_opacity', 'wp_particles_display_on');

