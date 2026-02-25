#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'emc_setting_countries'
wp option delete 'emc_setting_number'
wp option delete 'emc_setting_welcome'
wp option delete 'emc_setting_account_sid'
wp option delete 'emc_setting_auth_token'
wp option delete 'fs_debug_mode'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_active_plugins'
wp option delete 'fs_storage_logger'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'update_themes'

