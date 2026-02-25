#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sg_subscribe_settings'
wp option delete 'do_not_mail'

# Delete Transients
wp transient delete 'settings_errors'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sg_subscribe-to-comments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sg_subscribe-to-comments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sg_subscribe-to-comments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sg_subscribe-to-comments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sg_subscribe-to-comments-pending'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sg_subscribe-to-comments-pending'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sg_subscribe-to-comments-pending'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sg_subscribe-to-comments-pending'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sg_subscribe-to-comments-pending-with-email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sg_subscribe-to-comments-pending-with-email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sg_subscribe-to-comments-pending-with-email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sg_subscribe-to-comments-pending-with-email'"
