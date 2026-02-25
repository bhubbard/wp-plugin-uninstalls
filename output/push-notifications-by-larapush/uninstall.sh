#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'unlimited_push_notifications_by_larapush_access'
wp option delete 'unlimited_push_notifications_by_larapush_panel_url'
wp option delete 'unlimited_push_notifications_by_larapush_panel_email'
wp option delete 'unlimited_push_notifications_by_larapush_panel_password'
wp option delete 'unlimited_push_notifications_by_larapush_panel_plan'
wp option delete 'unlimited_push_notifications_by_larapush_panel_version'
wp option delete 'unlimited_push_notifications_by_larapush_panel_domains'
wp option delete 'unlimited_push_notifications_by_larapush_panel_domains_selected'
wp option delete 'unlimited_push_notifications_by_larapush_js_filenames_for_site'
wp option delete 'unlimited_push_notifications_by_larapush_configure_pwa_ios'
wp option delete 'unlimited_push_notifications_by_larapush_codes'
wp option delete 'unlimited_push_notifications_by_larapush_panel_integration_tried'
wp option delete 'unlimited_push_notifications_by_larapush_enable_push_notifications'
wp option delete 'unlimited_push_notifications_by_larapush_push_on_publish'
wp option delete 'unlimited_push_notifications_by_larapush_push_on_publish_delay'
wp option delete 'unlimited_push_notifications_by_larapush_push_on_publish_for_webstories'
wp option delete 'unlimited_push_notifications_by_larapush_add_code_for_amp'
wp option delete 'unlimited_push_notifications_by_larapush_amp_code_location'

# Delete Transients
wp transient delete 'larapush_error'
wp transient delete 'larapush_success'

# Clear Cron Jobs
wp cron event delete 'unlimited_push_notifications_by_larapush_send_scheduled_notification'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_genesis_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_genesis_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_genesis_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_genesis_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seopress_titles_desc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seopress_titles_desc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seopress_titles_desc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seopress_titles_desc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_og_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_og_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_og_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_og_description'"
