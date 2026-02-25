#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'afb_%'"
wp option delete 'afb_setting'
wp option delete 'afb_style'
wp option delete 'afb_post_types'
wp option delete 'afb_hide_default_controller'
wp option delete 'afb_comment'
wp option delete 'afb_controller'
wp option delete 'afb_db_version'
wp option delete 'afb_ga'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_afb_post_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_afb_post_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_afb_post_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_afb_post_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_afb_object_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_afb_object_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_afb_object_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_afb_object_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_afb_source_comment_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_afb_source_comment_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_afb_source_comment_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_afb_source_comment_id'"
