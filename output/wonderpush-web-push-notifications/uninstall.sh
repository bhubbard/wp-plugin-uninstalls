#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wonderpush.last_send_time'
wp option delete 'WonderPushSettings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wonderpush_send_notification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wonderpush_send_notification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wonderpush_send_notification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wonderpush_send_notification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wonderpush_send_notification_delay_seconds'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wonderpush_send_notification_delay_seconds'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wonderpush_send_notification_delay_seconds'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wonderpush_send_notification_delay_seconds'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wonderpush_target_segment_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wonderpush_target_segment_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wonderpush_target_segment_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wonderpush_target_segment_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wonderpush_target_segment_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wonderpush_target_segment_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wonderpush_target_segment_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wonderpush_target_segment_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wonderpush_target_tags'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wonderpush_target_tags'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wonderpush_target_tags'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wonderpush_target_tags'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wonderpush_meta_box_present'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wonderpush_meta_box_present'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wonderpush_meta_box_present'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wonderpush_meta_box_present'"
