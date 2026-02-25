#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'neliosr_subscription'
wp option delete 'neliosr_site_id'
wp option delete 'neliosr_api_secret'
wp option delete 'neliosr_recording_status'
wp option delete 'nelio-session-recordings_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%'"

# Delete Transients
wp transient delete 'neliosr_site_object'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
