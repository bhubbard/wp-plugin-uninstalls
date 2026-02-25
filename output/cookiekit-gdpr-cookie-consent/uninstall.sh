#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cookiekit_settings'
wp option delete 'cookiekit_logo_id'
wp option delete 'cookiekit_version'

# Delete Transients
wp transient delete 'cookiekit_export_data'

