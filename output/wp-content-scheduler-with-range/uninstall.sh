#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_post_types'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_move_to'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_occasional_contents'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_pages_already_have_occasional_content'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_shortcode_content'"
wp option delete 'ced_wcswr_shortcode_content'
wp option delete 'ced_wcswr_pages_already_have_occasional_content'
wp option delete 'ced_wcswr_latest_version'
wp option delete 'ced_wcswr_move_to_trash'
wp option delete 'ced_wcswr_occasional_content'
wp option delete 'ced_wcswr_occasional_contents'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_from_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_from_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_from_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_from_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_to_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_to_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_to_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_to_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_from_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_from_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_from_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_from_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_to_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_to_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_to_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_to_time'"
