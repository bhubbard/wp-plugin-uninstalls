#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '__denkis_token'
wp option delete '__denkis_first_import'
wp option delete '__denkis_last_run'
wp option delete '__denkis_wp_user'
wp option delete '__denkis_last_import'
wp option delete '__denkis_modules'
wp option delete '__denkis_wfts'
wp option delete 'denkis_fields'
wp option delete '__denkis_slug'
wp option delete '__denkis_last_update_timestamp_news'
wp option delete '__denkis_last_update_timestamp_content'
wp option delete '__denkis_last_update_timestamp_qa'
wp option delete '__denkis_last_update_timestamp_product'
wp option delete '__denkis_last_update_timestamp_tip'
wp option delete '__denkis_mix'
wp option delete '__denkis_update_interval'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ID_original'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ID_original'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ID_original'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ID_original'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_is_custom'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_is_custom'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_is_custom'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_is_custom'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'related_posts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'related_posts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'related_posts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'related_posts'"
