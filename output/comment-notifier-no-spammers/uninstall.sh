#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lstc'
wp option delete 'lstc_migrate_options_complete'
wp option delete 'lstc_cleanup_emails_done'
wp option delete 'lstc_update_table_utf8_complete'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lstc_subscribe'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lstc_subscribe'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lstc_subscribe'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lstc_subscribe'"
