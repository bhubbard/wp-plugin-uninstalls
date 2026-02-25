#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mb_locale'
wp option delete 'mb_admin_locale'
wp option delete 'mb_install_product'
wp option delete 'mb_admin_check_data'
wp option delete 'mb_user_synchronize_index'
wp option delete 'mb_security_mode'
wp option delete 'mb_skin_model'
wp option delete 'mb_latest_board_data'
wp option delete 'mb_latest_comment_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mb_post_seo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mb_post_seo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mb_post_seo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mb_post_seo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mb_thumbnail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mb_thumbnail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mb_thumbnail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mb_thumbnail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mb_user_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mb_user_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mb_user_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mb_user_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
