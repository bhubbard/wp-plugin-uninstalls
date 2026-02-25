#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'conf_scheduler_%'"
wp option delete 'conf_scheduler_workshop_slug'
wp option delete 'conf_scheduler_version'
wp option delete 'conf_scheduler_options'
wp option delete 'wc_am_client_15800'
wp option delete 'wc_am_client_15800_instance'
wp option delete 'conf_scheduler_view_mode'
wp option delete 'conf_scheduler_day_mode'
wp option delete 'conf_scheduler_per_row'
wp option delete 'conf_scheduler_workshop_sort_field'
wp option delete 'conf_scheduler_workshop_sort_order'
wp option delete 'conf_scheduler_day_format'
wp option delete 'conf_scheduler_day_format_custom'
wp option delete 'conf_scheduler_filter_multiple'
wp option delete 'conf_scheduler_hide_empty'
wp option delete 'conf_scheduler_single_workshop_view'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'start'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'start'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'start'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'start'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'start_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'start_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'start_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'start_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'end_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'end_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'end_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'end_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'length'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'length'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'length'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'length'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'file_attachments_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'file_attachments_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'file_attachments_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'file_attachments_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'presenter_bio'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'presenter_bio'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'presenter_bio'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'presenter_bio'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'workshop_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'workshop_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'workshop_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'workshop_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'location_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'location_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'location_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'location_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'presenter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'presenter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'presenter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'presenter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hide_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hide_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hide_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hide_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'collapse'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'collapse'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'collapse'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'collapse'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hide_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hide_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hide_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hide_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'group_by_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'group_by_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'group_by_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'group_by_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'session'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'session'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'session'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'session'"
