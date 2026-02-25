#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'swslcdt'
wp option delete 'sws_index_rebuild_interval_hours'
wp option delete 'sws_show_price'
wp option delete 'sws_show_stock'
wp option delete 'sws_show_debug_score'
wp option delete 'sws_enable_cache'
wp option delete 'sws_top_search_target'
wp option delete 'sws_search_classes_mobile'
wp option delete 'sws_search_classes_desktop'
wp option delete 'sws_custom_css'
wp option delete 'sws_insert_method'
wp option delete 'sws_disable_logging_for_admins'
wp option delete 'sws_enable_keyword_column'
wp option delete 'sws_license_email'
wp option delete 'sws_license_key'

# Delete Transients
wp transient delete 'sws_activation_redirect'

# Clear Cron Jobs
wp cron event delete 'quote_cron_swsvalid'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sws_notice_dismissed_until'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sws_notice_dismissed_until'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sws_notice_dismissed_until'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sws_notice_dismissed_until'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sws_searched_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sws_searched_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sws_searched_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sws_searched_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sws_addtocart_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sws_addtocart_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sws_addtocart_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sws_addtocart_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'external_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'external_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'external_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'external_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'external_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'external_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'external_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'external_image_gallery'"
