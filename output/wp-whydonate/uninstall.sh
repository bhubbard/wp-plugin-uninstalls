#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'myplugin_options'
wp option delete 'wd_apikey_db_version'

# Delete Transients
wp transient delete 'wp_upe_updated'

