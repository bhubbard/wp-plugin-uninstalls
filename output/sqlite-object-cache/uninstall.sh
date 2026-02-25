#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sqlite_object_cache_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'sqlite_object_cache_version'

# Delete Transients
wp transient delete 'sqlite-object-cache-flush-on-update'

