#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'SWEET_TRACKER_ID'
wp option delete 'SWEET_INIT_ERROR'
wp option delete 'SWEET_INIT_SUCCESS'
wp option delete 'SWEET_TRACKER'
wp option delete 'SWEET_BASKET_TRACKER'

# Delete Transients
wp transient delete 'fx-admin-notice-sweet'

