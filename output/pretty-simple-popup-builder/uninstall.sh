#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_psp_require_for'
wp option delete '_psp_always_verify'
wp option delete '_psp_delay_timer'
wp option delete '_psp_pagetargeting_option'
wp option delete '_psp_cookie_length'
wp option delete '_psp_popup_template'
wp option delete '_psp_image_link'
wp option delete '_psp_logo'
wp option delete '_psp_heading'
wp option delete '_psp_description'
wp option delete '_psp_custom_agreebutton_text'
wp option delete '_psp_ctabutton_link'
wp option delete '_psp_agree_btn_bgcolor'
wp option delete '_psp_box_color'
wp option delete '_psp_ajax_check'
wp option delete '_psp_reset_cookie'
wp option delete '_psp_new_cookie_name'
wp option delete 'pretty-simple-popup'
wp option delete '_psp_edge_to_edge_image'
wp option delete '_psp_moreinfo_link'
wp option delete '_psp_overlay_color'
wp option delete '_psp_adjust_transparency'
wp option delete '_psp_box_show'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete '_psp_cookie_duration'
wp option delete '_psp_input_type'
wp option delete '_psp_membership'
wp option delete '_psp_user_age_verify_option'
wp option delete '_psp_disclaimer'
wp option delete '_psp_disAgree_btn_bgcolor'
wp option delete '_psp_custom_disagreebutton_text'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_psp_needs_verify'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_psp_needs_verify'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_psp_needs_verify'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_psp_needs_verify'"
