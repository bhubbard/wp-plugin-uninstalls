#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'inpsyde_multilingual'
wp option delete 'inpsyde_multilingual_cpt'
wp option delete 'inpsyde_companyname'
wp option delete 'mlp_version'
wp option delete 'inpsyde_multilingual_quicklink_options'
wp option delete 'state_modules'
wp option delete 'multilingual_press_check_db'
wp option delete 'inpsyde_multilingual_blog_relationship'
wp option delete 'inpsyde_multilingual_redirect'
wp option delete 'inpsyde_multilingual_flag_url'
wp option delete 'inpsyde_multilingual_default_actions'
wp option delete 'inpsyde_license_status_MultilingualPress Pro'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'post_is_translated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'post_is_translated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'post_is_translated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'post_is_translated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_post_is_translated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_post_is_translated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_post_is_translated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_post_is_translated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'trash_the_other_posts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'trash_the_other_posts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'trash_the_other_posts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'trash_the_other_posts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_trash_the_other_posts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_trash_the_other_posts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_trash_the_other_posts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_trash_the_other_posts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
