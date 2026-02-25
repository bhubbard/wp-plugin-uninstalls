#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'taklink_page_id'
wp option delete 'taklink_apitoken'

# Delete Transients
wp transient delete 'taklink_user_page_cache'

