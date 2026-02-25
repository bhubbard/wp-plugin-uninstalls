#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'heateor_ffc'
wp option delete 'heateor_ffc_version'
wp option delete 'heateor_ffc_gdpr_notification_read'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_heateor_ffc_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_heateor_ffc_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_heateor_ffc_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_heateor_ffc_meta'"
