#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'elementor_allow_tracking'
wp option delete 'wadi_save_settings'
wp option delete 'wadi_elements_btn_value'
wp option delete 'wadi_integration_settings_options'
wp option delete 'fs_debug_mode'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_active_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'templates_count'
wp option delete 'temp_count'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'update_themes'

