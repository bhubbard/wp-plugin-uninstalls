#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'philips_hue_settings'

# Delete Transients
wp transient delete 'codex_nas_lighting_lights'
wp transient delete 'codex_nas_lighting_lights_raw'
wp transient delete 'codex_nas_lighting_sensors'
wp transient delete 'codex_nas_lighting_sensors_raw'

# Clear Cron Jobs
wp cron event delete 'codex_nas_lighting_lights_job'
wp cron event delete 'codex_nas_lighting_sensors_job'

