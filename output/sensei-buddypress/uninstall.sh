#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'buddypress_sensei_plugin_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_course_woocommerce_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_course_woocommerce_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_course_woocommerce_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_course_woocommerce_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lesson_course'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lesson_course'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lesson_course'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lesson_course'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_attached_media'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_attached_media'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_attached_media'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_attached_media'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lesson_length'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lesson_length'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lesson_length'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lesson_length'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lesson_complexity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lesson_complexity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lesson_complexity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lesson_complexity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bp_course_group'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bp_course_group'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bp_course_group'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bp_course_group'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'attached_course_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'attached_course_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'attached_course_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'attached_course_id'"
