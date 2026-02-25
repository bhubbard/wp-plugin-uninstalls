#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'elementor_active_kit'
wp option delete 'elementor_container_width'
wp option delete 'elementor_stretched_section_container'
wp option delete 'blogfoel_all_widget_setting'
wp option delete 'elementor_maintenance_mode_mode'
wp option delete 'elementor_maintenance_mode_template_id'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'blogfoel_display_condition'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'blogfoel_display_condition'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'blogfoel_display_condition'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'blogfoel_display_condition'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'blogfoel_demo_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'blogfoel_demo_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'blogfoel_demo_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'blogfoel_demo_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'post_type_posts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'post_type_posts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'post_type_posts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'post_type_posts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'post_type_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'post_type_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'post_type_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'post_type_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'category_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'category_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'category_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'category_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'category_text_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'category_text_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'category_text_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'category_text_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'post_views_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'post_views_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'post_views_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'post_views_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'category-image-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'category-image-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'category-image-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'category-image-id'"
