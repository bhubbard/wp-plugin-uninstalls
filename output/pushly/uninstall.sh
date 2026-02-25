#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pushly'
wp option delete 'pushly_options'

# Delete Transients
wp transient delete 'pushly_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pushly_needs_saving'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pushly_needs_saving'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pushly_needs_saving'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pushly_needs_saving'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pushly_send_notification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pushly_send_notification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pushly_send_notification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pushly_send_notification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pushly_notification_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pushly_notification_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pushly_notification_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pushly_notification_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pushly_customize_notification_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pushly_customize_notification_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pushly_customize_notification_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pushly_customize_notification_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pushly_custom_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pushly_custom_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pushly_custom_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pushly_custom_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pushly_custom_body'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pushly_custom_body'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pushly_custom_body'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pushly_custom_body'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pushly_customize_audience'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pushly_customize_audience'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pushly_customize_audience'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pushly_customize_audience'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pushly_audience_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pushly_audience_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pushly_audience_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pushly_audience_ids'"
