#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'atec_wpd_new_error'
wp option delete 'atec_WPAS_stats'
wp option delete 'atec_allow_integrity_check'
wp option delete 'atec_dev_mode'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'atec_admin_debug'

# Delete Transients
wp transient delete 'atec_license_code'

