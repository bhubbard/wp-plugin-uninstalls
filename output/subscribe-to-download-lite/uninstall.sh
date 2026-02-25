#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'stdl_settings'
wp option delete 'stdl_plugin_install_date'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stdl_metabox_details'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stdl_metabox_details'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stdl_metabox_details'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stdl_metabox_details'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stdl_hide_review_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stdl_hide_review_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stdl_hide_review_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stdl_hide_review_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stdl_remind_later_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stdl_remind_later_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stdl_remind_later_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stdl_remind_later_date'"
