#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'banner_options'

# Delete Transients
wp transient delete 'notice-transient'
wp transient delete 'fx-admin-notice-example'

