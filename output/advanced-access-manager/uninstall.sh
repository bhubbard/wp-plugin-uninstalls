#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'aam_security_audit_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aam_user_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aam_user_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aam_user_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aam_user_status'"
