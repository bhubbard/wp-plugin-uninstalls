#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'feedify_plugin_status'
wp option delete 'feedify_permalinks_flushed'
wp option delete 'feedify_domain_key'
wp option delete 'feedify_licence_key'
wp option delete 'feedify_public_key'
wp option delete 'feedify_enable_ssl'
wp option delete 'feedify_is_default_logo'
wp option delete 'feedify_is_banner_image'
wp option delete 'feedify_is_featured_logo'
wp option delete 'feedify_is_word_limit'
wp option delete 'feedify_is_msg_send'
wp option delete 'feedify_is_website_logo'
wp option delete 'feedify_set_site_name_as_title_post_notification'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_custom_title'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_custom_content'"
wp option delete 'feedify_add_post_notification'
wp option delete 'feedify_edit_post_notification'
wp option delete 'custom_image_url_type'
wp option delete 'myprefix_image_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'send_feedify_notification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'send_feedify_notification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'send_feedify_notification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'send_feedify_notification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'feedify_notification_already_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'feedify_notification_already_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'feedify_notification_already_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'feedify_notification_already_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'schedule_send_feedify_notification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'schedule_send_feedify_notification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'schedule_send_feedify_notification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'schedule_send_feedify_notification'"
