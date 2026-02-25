#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wapppress_last_build'
wp option delete 'wapppress_settings'
wp option delete 'wapppress_license'
wp option delete 'WAPPPRESS_SETTINGS'
wp option delete 'INSTANTAPPY_active_sites'
wp option delete 'INSTANTAPPY_version'
wp option delete 'INSTANTAPPY_settings'
wp option delete 'instantappy_pwa_manifest_version'

# Delete Transients
wp transient delete 'wapppress_trial_notice'
wp transient delete 'INSTANTAPPY_notice_activation'
wp transient delete 'INSTANTAPPY_network_admin_notice_activation'

