#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'oxi_image_user_permission'
wp option delete 'image_hover_ultimate_update_complete'
wp option delete 'oxi_image_hover_activation_date'
wp option delete 'oxi_image_hover_nobug'
wp option delete 'image_hover_ultimate_mobile_device_key'
wp option delete 'oxi_addons_font_awesome'
wp option delete 'oxi_addons_way_points'
wp option delete 'oxi_addons_google_font'
wp option delete 'oxi_addons_custom_parent_class'
wp option delete 'oxi_image_support_massage'
wp option delete 'oxi_image_hover_version'
wp option delete 'oxi_image_hover_recommended'
wp option delete 'oxi_addons_font_awesome_version'
wp option delete 'oxilab_flip_box_version'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'oxi_image_user_permission_role'
wp transient delete 'oxi_image_hover_activation_redirect'
wp transient delete 'oxi_flip_box_activation_redirect'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'image_hover_ultimate_update'
wp cron event delete 'fs_debug_turn_off_logging_hook'

