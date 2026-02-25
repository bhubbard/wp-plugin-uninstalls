#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nooz_options_changed'
wp option delete 'mdpartners_db_version'
wp option delete 'mdpartners_denied_email'
wp option delete 'mdpartners_approved_email'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nooz_release'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nooz_release'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nooz_release'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nooz_release'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nooz'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nooz'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nooz'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nooz'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_fields'"
