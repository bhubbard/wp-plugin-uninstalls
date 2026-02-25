#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete '_bp_activity_privacy_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'rtmedia_counts_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'rtmedia_counts_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'rtmedia_counts_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'rtmedia_counts_%'"
