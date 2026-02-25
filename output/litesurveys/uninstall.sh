#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lsapp_litesurveys_version'
wp option delete 'LSAPP_litesurveys_settings'

# Delete Transients
wp transient delete 'litesurveys_active_surveys'
wp transient delete 'litesurveys_has_active'

