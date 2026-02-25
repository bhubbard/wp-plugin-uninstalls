#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gfw_debug'
wp option delete 'gfw_errors'
wp option delete 'gfw_info'
wp option delete 'gfw_running'
wp option delete 'gfw_template'
wp option delete 'gfw_remove_hashtags'
wp option delete 'gfw_post_status'
wp option delete 'gfw_post_categories'
wp option delete 'gfw_post_tags'
wp option delete 'gfw_import_trashed'
wp option delete 'gfw_featured_images'
wp option delete 'gfw_overwrite'
wp option delete 'gfw_imported_comments'
wp option delete 'gfw_comments'
wp option delete 'gfw_api_key'
wp option delete 'gfw_profiles'
wp option delete 'gfw_history'
wp option delete 'gfw_max_resolution'
wp option delete 'gfw_ignore_tags'
wp option delete 'gfw_import_tags'
wp option delete 'gfw_ignore_canonical'
wp option delete 'gfw_imported_new'
wp option delete 'gfw_imported_updated'
wp option delete 'gfw_imported_ignored'
wp option delete 'gfw_schedule'

# Clear Cron Jobs
wp cron event delete 'gfw_import'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gfw_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gfw_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gfw_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gfw_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gfw_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gfw_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gfw_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gfw_url'"
