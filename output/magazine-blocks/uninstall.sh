#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_magazine_blocks_activation_redirect'
wp option delete '_magazine_blocks_blocks_css'
wp option delete 'widget_block'
wp option delete '_magazine_blocks_global_styles_generated_timestamp'
wp option delete '_magazine_blocks_version'
wp option delete 'magazine-blocks_global_styles'
wp option delete '_magazine_blocks_activation_time'
wp option delete 'dateWeatherApiKey'
wp option delete 'dateWeatherZipCode'
wp option delete 'dateWeatherLatitude'
wp option delete 'dateWeatherLongitude'
wp option delete '_magazine_blocks_settings'
wp option delete '_magazine_blocks_widget_css'
wp option delete 'downloaded_font_files'

# Delete Transients
wp transient delete '_magazine_blocks_library_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%]' OR option_name LIKE '_site_transient_%]'"
wp transient delete '_magazine_blocks_media_items'
wp transient delete 'magazine_blocks_temp'
wp transient delete 'magazine_blocks_weather'
wp transient delete 'magazine_blocks_location'
wp transient delete 'magazine_blocks_weather_info'

# Clear Cron Jobs
wp cron event delete 'magazine_blocks_delete_fonts_folder'
wp cron event delete 'delete_fonts_folder'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_magazine_blocks_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_magazine_blocks_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_magazine_blocks_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_magazine_blocks_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_magazine_blocks_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_magazine_blocks_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_magazine_blocks_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_magazine_blocks_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_magazine_blocks_blocks_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_magazine_blocks_blocks_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_magazine_blocks_blocks_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_magazine_blocks_blocks_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'video_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'video_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'video_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'video_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mzb_post_view_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mzb_post_view_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mzb_post_view_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mzb_post_view_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mzb_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mzb_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mzb_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mzb_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_magazine_blocks_review'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_magazine_blocks_review'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_magazine_blocks_review'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_magazine_blocks_review'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_magazine_blocks_image_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_magazine_blocks_image_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_magazine_blocks_image_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_magazine_blocks_image_hash'"
