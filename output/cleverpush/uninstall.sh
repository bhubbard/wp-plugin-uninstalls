#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cleverpush_channel_config'
wp option delete 'cleverpush_amp_widget_position'
wp option delete 'cleverpush_channel_id'
wp option delete 'cleverpush_apikey_private'
wp option delete 'cleverpush_enable_domain_replacement'
wp option delete 'cleverpush_replacement_domain'
wp option delete 'cleverpush_feed_maximum_articles'
wp option delete 'cleverpush_feed_maximum_days'
wp option delete 'cleverpush_woocommerce_notification_minutes'
wp option delete 'cleverpush_woocommerce_notification_text'
wp option delete 'cleverpush_capabilities_version'
wp option delete 'cleverpush_post_types'
wp option delete 'cleverpush_preview_access_enabled'
wp option delete 'cleverpush_amp_enabled'
wp option delete 'cleverpush_flush_rewrite_rules_flag'
wp option delete 'cleverpush_stories_enabled'
wp option delete 'cleverpush_channel_hidden_notification_settings'
wp option delete 'cleverpush_notification_title_required'
wp option delete 'cleverpush_notification_result'
wp option delete 'cleverpush_notification_error'
wp option delete 'cleverpush_channel_subdomain'
wp option delete 'cleverpush_channel_worker_file'
wp option delete 'cleverpush_apikey_public'
wp option delete 'cleverpush_feed_enabled'
wp option delete 'cleverpush_script_disabled'
wp option delete 'cleverpush_script_blocked_consentmanager_enabled'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_cleverpush_amp_script_%' OR option_name LIKE '_site_transient_cleverpush_amp_script_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_content' OR option_name LIKE '_site_transient_%_content'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_time' OR option_name LIKE '_site_transient_%_time'"
wp transient delete 'cleverpush_segments_response'
wp transient delete 'cleverpush_topics_response'
wp transient delete 'cleverpush_tags_response'

# Clear Cron Jobs
wp cron event delete 'cleverpush_check_if_product_bought'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cleverpush_story_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cleverpush_story_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cleverpush_story_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cleverpush_story_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cleverpush_notification_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cleverpush_notification_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cleverpush_notification_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cleverpush_notification_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cleverpush_notification_sent_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cleverpush_notification_sent_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cleverpush_notification_sent_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cleverpush_notification_sent_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cleverpush_send_notification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cleverpush_send_notification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cleverpush_send_notification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cleverpush_send_notification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cleverpush_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cleverpush_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cleverpush_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cleverpush_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cleverpush_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cleverpush_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cleverpush_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cleverpush_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cleverpush_scheduled_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cleverpush_scheduled_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cleverpush_scheduled_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cleverpush_scheduled_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cleverpush_disable_feed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cleverpush_disable_feed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cleverpush_disable_feed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cleverpush_disable_feed'"
