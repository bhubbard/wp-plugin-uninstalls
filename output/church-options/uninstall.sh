#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'church_event_option'
wp option delete 'church_announcements_option'
wp option delete 'church_ministries_option'
wp option delete 'church_sermons_option'
wp option delete 'church_people_option'
wp option delete 'church_verses_option'
wp option delete 'rss_language'
wp option delete 'acf_repeater_ac'
wp option delete 'acf_gallery_ac'
wp option delete 'acf_options_page_ac'
wp option delete 'acf_flexible_content_ac'
wp option delete 'acf_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rule'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rule'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rule'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rule'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'allorany'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'allorany'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'allorany'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'allorany'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hide_on_screen'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hide_on_screen'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hide_on_screen'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hide_on_screen'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'field_group_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'field_group_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'field_group_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'field_group_layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'show_on_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'show_on_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'show_on_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'show_on_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
