#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'profileframegen_frame_id'
wp option delete 'profileframegen_zoom_controls'
wp option delete 'profileframegen_reset_position'
wp option delete 'profileframegen_rotate_controls'
wp option delete 'profileframegen_bokeh_toggle'
wp option delete 'profileframegen_gravatar_field'
wp option delete 'profileframegen_show_instructions'
wp option delete 'profileframegen_media_library_upload'
wp option delete 'profileframegen_media_upload_loggedin_only'
wp option delete 'profileframegen_controls_position'
wp option delete 'profileframegen_instructions_text'
wp option delete 'profileframegen_background_color'
wp option delete 'profileframegen_first_save_date'
wp option delete 'profileframegen_already_donated'
wp option delete 'profileframegen_dismissal_count'
wp option delete 'profileframegen_notice_last_dismissed'
wp option delete 'profileframegen_migration_completed_time'
wp option delete 'profileframegen_dismissed_post_migration_notice'
wp option delete 'profileframegen_ui_version'

# Delete Transients
wp transient delete 'profileframegen_plugin_activated'

