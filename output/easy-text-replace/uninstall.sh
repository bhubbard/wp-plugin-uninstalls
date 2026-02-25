#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'etrp_version'
wp option delete 'etrp_cache_version'
wp option delete 'etrp_delete_data_on_uninstall'
wp option delete 'etrp_max_replacements'
wp option delete 'etrp_cache_expiration'

# Delete Transients
wp transient delete 'settings_errors'

