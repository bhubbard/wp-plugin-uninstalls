#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'labtheme_descriptions'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_labtheme_setting'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_labtheme_setting'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_labtheme_setting'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_labtheme_setting'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_labtheme_images_course_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_labtheme_images_course_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_labtheme_images_course_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_labtheme_images_course_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_labtheme_images_event_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_labtheme_images_event_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_labtheme_images_event_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_labtheme_images_event_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'featured-checkbox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'featured-checkbox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'featured-checkbox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'featured-checkbox'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'featured-checkbox_bandw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'featured-checkbox_bandw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'featured-checkbox_bandw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'featured-checkbox_bandw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'category-image-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'category-image-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'category-image-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'category-image-id'"
