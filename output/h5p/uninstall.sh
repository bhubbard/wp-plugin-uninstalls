#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'h5p_track_user'
wp option delete 'h5p_has_request_user_consent'
wp option delete 'h5p_hub_is_enabled'
wp option delete 'h5p_send_usage_statistics'
wp option delete 'h5p_insert_method'
wp option delete 'h5p_content_type_cache_updated_at'
wp option delete 'h5p_embed'
wp option delete 'h5p_multisite_capabilities'
wp option delete 'h5p_last_info_print'
wp option delete 'h5p_ext_communication'
wp option delete 'h5p_update_available'
wp option delete 'h5p_current_update'
wp option delete 'h5p_update_available_path'
wp option delete 'h5p_frame'
wp option delete 'h5p_export'
wp option delete 'h5p_copyright'
wp option delete 'h5p_icon'
wp option delete 'h5p_save_content_state'
wp option delete 'h5p_save_content_frequency'
wp option delete 'h5p_show_toggle_view_others_h5p_contents'
wp option delete 'h5p_enable_lrs_content_types'
wp option delete 'h5p_check_h5p_requirements'
wp option delete 'h5p_site_key'
wp option delete 'h5p_h5p_site_uuid'
wp option delete 'h5p_version'
wp option delete 'h5p_minitutorial'
wp option delete 'h5p_library_updates'
wp option delete 'h5p_site_type'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'h5p_%'"

# Delete Transients
wp transient delete 'dirsize_cache'

# Clear Cron Jobs
wp cron event delete 'h5p_daily_cleanup'

