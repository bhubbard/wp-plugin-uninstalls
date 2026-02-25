#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'content_audit'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_audit_term_count_%'"

# Clear Cron Jobs
wp cron event delete 'content_audit_outdated_report'
wp cron event delete 'content_audit_outdated_email'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_content_audit_owner'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_content_audit_owner'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_content_audit_owner'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_content_audit_owner'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_content_audit_notes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_content_audit_notes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_content_audit_notes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_content_audit_notes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_content_audit_expiration_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_content_audit_expiration_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_content_audit_expiration_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_content_audit_expiration_date'"
