#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gfat_export_form_filename'
wp option delete 'gfat_export_exclude_bom'
wp option delete 'gfat_spam_filtering'
wp option delete 'gfat_last_entry_id'
wp option delete 'gfat_recent_entry_count'
wp option delete 'gfadvtools_per_page'
wp option delete 'gfat_spam_list_table_created'
wp option delete 'gfat_spam_api_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'form_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'form_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'form_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'form_id'"
