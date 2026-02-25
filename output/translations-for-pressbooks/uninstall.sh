#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tfp_uninstall_save'
wp option delete 'tfp_book_translation_enable'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'efp_trans_language'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'efp_trans_language'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'efp_trans_language'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'efp_trans_language'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pb_is_based_on'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pb_is_based_on'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pb_is_based_on'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pb_is_based_on'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tfp_post_translation_disable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tfp_post_translation_disable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tfp_post_translation_disable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tfp_post_translation_disable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pb_language'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pb_language'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pb_language'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pb_language'"
