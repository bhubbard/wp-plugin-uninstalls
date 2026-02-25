#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ecp_date_last_active'
wp option delete 'ecp_date_last_timestamp'
wp option delete 'ecp_general_settings'
wp option delete 'ecp-library-post'
wp option delete 'ecp-event-add-time'
wp option delete 'ecp-offer-add-time'
wp option delete 'ecp_options'
wp option delete 'ecp_schedule_settings'
wp option delete 'ecp_frequency_schedules'
wp option delete 'ecp_native_profiles'
wp option delete 'ecp_twitter_profiles'
wp option delete 'buffer-already-connected'
wp option delete 'ecp-buffer-connected-profile'
wp option delete 'evergreen_content_date_last_active'
wp option delete 'evergreen_content_date_last_timestamp'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_buffer_token'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_buffer_profiles'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_general_settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_schedule_settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_timezone'"
wp option delete 'ecp_plugin_activation_redirect'
wp option delete 'ecp_buffer_pre_profile'
wp option delete 'ecp_buffer_token'
wp option delete 'ecp_buffer_profiles'
wp option delete 'ecp_twitter_token'
wp option delete 'ecp_timezone'
wp option delete 'ecp_buffer_lifetime'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_date_last_active'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_date_last_timestamp'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ecp_cl_cat_%' OR option_name LIKE '_site_transient_ecp_cl_cat_%'"
wp transient delete 'ecp_cl_cat_active_ids'
wp transient delete 'ecp_cl_cat_map'

# Clear Cron Jobs
wp cron event delete 'wp_evergreen_content_schedule_cron_hook'
wp cron event delete 'wp_evergreen_content_schedule_single_cron_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecp-post-ref'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecp-post-ref'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecp-post-ref'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecp-post-ref'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecp-post-media'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecp-post-media'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecp-post-media'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecp-post-media'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecp-post-profile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecp-post-profile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecp-post-profile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecp-post-profile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecp-post-network'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecp-post-network'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecp-post-network'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecp-post-network'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecp-post-category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecp-post-category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecp-post-category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecp-post-category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecp-post-postType'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecp-post-postType'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecp-post-postType'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecp-post-postType'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecp-post-buttonNew'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecp-post-buttonNew'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecp-post-buttonNew'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecp-post-buttonNew'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecp-post-buttonLinkNew'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecp-post-buttonLinkNew'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecp-post-buttonLinkNew'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecp-post-buttonLinkNew'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecp-post-eventTitle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecp-post-eventTitle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecp-post-eventTitle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecp-post-eventTitle'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecp-post-eventDate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecp-post-eventDate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecp-post-eventDate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecp-post-eventDate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecp-post-eventAddTime'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecp-post-eventAddTime'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecp-post-eventAddTime'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecp-post-eventAddTime'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecp-post-eventButton'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecp-post-eventButton'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecp-post-eventButton'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecp-post-eventButton'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecp-post-eventButtonLink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecp-post-eventButtonLink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecp-post-eventButtonLink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecp-post-eventButtonLink'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecp-post-eventTime'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecp-post-eventTime'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecp-post-eventTime'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecp-post-eventTime'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecp-post-offerTitle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecp-post-offerTitle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecp-post-offerTitle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecp-post-offerTitle'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecp-post-offerDate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecp-post-offerDate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecp-post-offerDate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecp-post-offerDate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecp-post-offerAddTime'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecp-post-offerAddTime'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecp-post-offerAddTime'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecp-post-offerAddTime'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecp-post-offerButton'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecp-post-offerButton'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecp-post-offerButton'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecp-post-offerButton'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecp-post-offerButtonLink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecp-post-offerButtonLink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecp-post-offerButtonLink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecp-post-offerButtonLink'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecp-post-offerTerm'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecp-post-offerTerm'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecp-post-offerTerm'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecp-post-offerTerm'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecp-post-offerTime'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecp-post-offerTime'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecp-post-offerTime'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecp-post-offerTime'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'ecp-is-check-%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'ecp-is-check-%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'ecp-is-check-%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ecp-is-check-%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecp-is-share'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecp-is-share'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecp-is-share'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecp-is-share'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecp-is-save-library'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecp-is-save-library'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecp-is-save-library'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecp-is-save-library'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eg_content_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eg_content_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eg_content_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eg_content_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecp-wp-cron-notice-dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecp-wp-cron-notice-dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecp-wp-cron-notice-dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecp-wp-cron-notice-dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecp-getting-started-dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecp-getting-started-dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecp-getting-started-dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecp-getting-started-dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecp-wp-translate-notice-dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecp-wp-translate-notice-dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecp-wp-translate-notice-dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecp-wp-translate-notice-dismissed'"
