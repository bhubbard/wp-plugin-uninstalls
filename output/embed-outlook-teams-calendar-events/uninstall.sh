#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'motce_admin_email'
wp option delete 'motce_admin_phone'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'motce_%'"
wp option delete 'application_config'
wp option delete 'mail_config'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aadObjectId'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aadObjectId'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aadObjectId'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aadObjectId'"
