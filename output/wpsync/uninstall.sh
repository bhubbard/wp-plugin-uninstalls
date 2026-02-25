#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpsync_spreadsheet_key'
wp option delete 'wpsync_spreadsheet_sheet'
wp option delete 'wpsync_allow_delete_from_spreadsheet'
wp option delete 'wpsync_allow_update_from_spreadsheet'
wp option delete 'wpsync_allow_update_fields'
wp option delete 'wpsync_debug_mode'
wp option delete 'wpsync_default_tags'
wp option delete 'wpsync_default_post_type'
wp option delete 'wpsync_default_status'
wp option delete 'wpsync_create_categories_if_not_exist'
wp option delete 'wpsync_create_tags_if_not_exist'
wp option delete 'wpsync_default_category'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsync_external_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsync_external_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsync_external_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsync_external_id'"
