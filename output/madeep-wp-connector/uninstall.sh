#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'madeep_username'
wp option delete 'madeep_password'
wp option delete 'madeep_debug_mode'
wp option delete 'madeep_debug_quantity'
wp option delete 'madeep_default_language'
wp option delete 'madeep_enable_write'
wp option delete 'madeep_download_gallery'
wp option delete 'madeep_data_type'
wp option delete 'madeep_time_last_update_hotels'
wp option delete 'madeep_time_last_update_ecom'
wp option delete 'madeep_time_last_update_offers'
wp option delete 'madeep_time_last_update_services'
wp option delete 'madeep_active_languages'
wp option delete 'madeep_active_multilanguages'
wp option delete 'madeep_template_hotels'
wp option delete 'madeep_template_ecoms'
wp option delete 'madeep_template_services'
wp option delete 'madeep_template_offers'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'madeep_template_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'madeep_category_%'"
wp option delete 'madeep_allow_structure_tag'
wp option delete 'madeep_allow_filters_tag'
wp option delete 'madeep_allow_lang_tag'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_page'"
wp option delete 'madeep_allow_single_sync'
wp option delete 'madeep_category_hotels'
wp option delete 'madeep_category_ecoms'
wp option delete 'madeep_category_services'
wp option delete 'madeep_category_offers'
wp option delete 'madeep_google_api_key'
wp option delete 'madeep_post_template_css'
wp option delete 'madeep_post_template_js'
wp option delete 'madeep_write_hotels_page'
wp option delete 'madeep_write_ecoms_page'
wp option delete 'madeep_write_services_page'
wp option delete 'madeep_write_offers_page'
wp option delete 'madeep_time_last_update_hotels_pages'
wp option delete 'madeep_time_last_update_hotels_list'
wp option delete 'madeep_time_last_update_ecoms'
wp option delete 'madeep_time_last_update_ecoms_pages'
wp option delete 'madeep_time_last_update_ecoms_list'
wp option delete 'madeep_time_last_update_services_pages'
wp option delete 'madeep_time_last_update_services_list'
wp option delete 'madeep_time_last_update_offers_pages'
wp option delete 'madeep_time_last_update_offers_list'
wp option delete 'madeep_sync_key'
wp option delete 'madeep_write_hotel_page'
wp option delete 'madeep_time_last_update_hotels_page'
wp option delete 'madeep_time_last_update_ecom_list'

# Clear Cron Jobs
wp cron event delete 'madeep_refresh_cache'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'madeep_galleryIDs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'madeep_galleryIDs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'madeep_galleryIDs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'madeep_galleryIDs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'madeep_featuredImageID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'madeep_featuredImageID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'madeep_featuredImageID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'madeep_featuredImageID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'madeep_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'madeep_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'madeep_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'madeep_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'madeep_tags'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'madeep_tags'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'madeep_tags'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'madeep_tags'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'madeep_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'madeep_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'madeep_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'madeep_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'madeep_id_element'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'madeep_id_element'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'madeep_id_element'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'madeep_id_element'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'madeep_id_container'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'madeep_id_container'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'madeep_id_container'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'madeep_id_container'"
