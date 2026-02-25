#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wps_cleaner_alert'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'default_%'"
wp option delete 'wpscleaner_admin_footer_text_rated'

# Delete Transients
wp transient delete 'wps_cleaner_total_posts'
wp transient delete 'wps_cleaner_total_postmeta'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wps_cleaner_dir_size_%' OR option_name LIKE '_site_transient_wps_cleaner_dir_size_%'"
wp transient delete 'wps_cleaner_dir_size'
wp transient delete 'wps_cleaner_img_count'
wp transient delete 'wps_plugins_adds'

# Clear Cron Jobs
wp cron event delete 'plugin_security_scanner_daily_event_hook'
wp cron event delete 'wps_cleaner_indexation_medias_queue'
wp cron event delete 'wps_cleaner_indexation_medias'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_context'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_context'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_context'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_context'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fl_builder_draft'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fl_builder_draft'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fl_builder_draft'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fl_builder_draft'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_cleaner_media_use'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_cleaner_media_use'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_cleaner_media_use'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_cleaner_media_use'"
