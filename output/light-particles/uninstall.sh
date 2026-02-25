#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_particles_quantity'
wp option delete 'wp_particles_speed'
wp option delete 'wp_particles_opacity'
wp option delete 'wp_particles_display_on'

