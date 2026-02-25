#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'lmm_maintenance_settings'
wp option delete 'lmm_activation_welcome'

