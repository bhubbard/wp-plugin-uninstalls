#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'autobute_settings'
wp option delete 'autobute_allow_tracking'

# Delete Transients
wp transient delete 'autobute_tracking_dismissed'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
