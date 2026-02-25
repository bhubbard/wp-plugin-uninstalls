#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dolomon-url'
wp option delete 'dolomon-app_id'
wp option delete 'dolomon-app_secret'
wp option delete 'dolomon-cache_expiration'

# Delete Transients
wp transient delete 'dolomon_data'

