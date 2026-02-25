#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpbuddy_license_key'
wp option delete 'wpbuddy_global'

# Delete Transients
wp transient delete 'wpbuddy_latest_news_response'

