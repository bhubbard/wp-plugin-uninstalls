#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fast_tag_link_type'
wp option delete 'fast_tag_member_type'
wp option delete 'fast_tag_subscriber_type'
wp option delete '_fastflow_sonod_data'
wp option delete 'fast_tagger_db_version'
wp option delete 'ff_widget_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tag_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tag_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tag_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tag_list'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tag_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tag_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tag_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tag_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
