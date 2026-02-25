#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'malcaLoginUser'
wp option delete 'malcaLoginPswd'
wp option delete 'malcaLoginCode'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'MalcaTrackingNumber'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'MalcaTrackingNumber'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'MalcaTrackingNumber'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'MalcaTrackingNumber'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'MalcaCourierType'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'MalcaCourierType'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'MalcaCourierType'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'MalcaCourierType'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'MalcaTrackUrl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'MalcaTrackUrl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'MalcaTrackUrl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'MalcaTrackUrl'"
