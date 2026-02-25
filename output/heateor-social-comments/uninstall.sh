#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'heateor_sc_version'
wp option delete 'heateor_sc'
wp option delete 'heateor_sc_plugin_notification_read'
wp option delete 'heateor_sc_gdpr_notification_read'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_heateor_sc_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_heateor_sc_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_heateor_sc_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_heateor_sc_meta'"
