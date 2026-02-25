#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'teachable_general_settings'
wp option delete 'teachable_data'
wp option delete 'teachable_activated'

# Delete Transients
wp transient delete 'transient_teachable_general_settings_wp_key'
wp transient delete 'transient_teachable_general_settings_sync_now'
wp transient delete 'transient_teachable_general_settings_sync_data_form'

# Clear Cron Jobs

