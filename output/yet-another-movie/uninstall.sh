#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'moviehelper-version'
wp option delete 'moviehelper_tmdb_settings'
wp option delete 'moviehelper_settings'

# Delete Transients
wp transient delete 'tmdb_api_key'

