#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_fl_builder_limitrevisions_num'
wp option delete '_fl_builder_limithistory_num'
wp option delete '_fl_builder_core_colors'
wp option delete '_fl_builder_theme_colors'
wp option delete '_fl_builder_limitrevisions_enabled'
wp option delete 'fl_delayed_notices'
wp option delete '_fl_builder_kit_fa_pro'
wp option delete 'fl_debug_mode'
wp option delete '_fl_builder_settings'
wp option delete '_fl_builder_enable_fa_pro'
wp option delete 'fl_builder_recent_fonts'
wp option delete '_fl_builder_notifications_enabled'
wp option delete 'fl_builder_usage_enabled'
wp option delete 'fl_plugin_recent_icons'
wp option delete '_fl_builder_update_info'
wp option delete '_fl_builder_google_auto'
wp option delete '_fl_builder_styles'
wp option delete '_fl_builder_enabled_icons'
wp option delete '_fl_builder_color_presets'
wp option delete '_fl_builder_services'
wp option delete '_fl_builder_enabled_modules'
wp option delete '_fl_builder_enabled_templates'
wp option delete '_fl_builder_templates_override'
wp option delete '_fl_builder_templates_override_rows'
wp option delete '_fl_builder_templates_override_columns'
wp option delete '_fl_builder_templates_override_modules'
wp option delete '_fl_builder_post_types'
wp option delete '_fl_builder_branding'
wp option delete '_fl_builder_branding_icon'
wp option delete '_fl_builder_theme_branding'
wp option delete '_fl_builder_user_access'
wp option delete '_fl_builder_help_button'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp option delete '_fl_builder_iframe_check'
wp option delete '_fl_builder_iframe_ui'
wp option delete '_fl_builder_version'
wp option delete 'fl_beta_updates'
wp option delete 'fl_alpha_updates'
wp option delete '_site_transient_update_plugins'
wp option delete '_site_transient_update_themes'
wp option delete '_fl_builder_background_presets'
wp option delete 'fl_site_url'
wp option delete '_fl_builder_enabled_blocks'
wp option delete '_transient_timeout_fl_debug_mode'
wp option delete 'fl_themes_subscription_email'

# Delete Transients
wp transient delete 'fl_debug_mode'
wp transient delete '_fl_builder_activation_admin_notice'
wp transient delete 'fl_builder_google_json'
wp transient delete 'fl_get_subscription_info'
wp transient delete 'update_plugins'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fl_builder_notifications_event'
wp cron event delete 'fl_builder_usage_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fl_builder_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fl_builder_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fl_builder_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fl_builder_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fl_dismissed_wp_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fl_dismissed_wp_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fl_dismissed_wp_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fl_dismissed_wp_notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fl_builder_data_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fl_builder_data_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fl_builder_data_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fl_builder_data_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fl_builder_draft_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fl_builder_draft_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fl_builder_draft_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fl_builder_draft_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fl_welcome_subscribed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fl_welcome_subscribed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fl_welcome_subscribed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fl_welcome_subscribed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fl_builder_template_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fl_builder_template_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fl_builder_template_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fl_builder_template_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fl_builder_layout_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fl_builder_layout_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fl_builder_layout_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fl_builder_layout_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fl_builder_history_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fl_builder_history_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fl_builder_history_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fl_builder_history_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fl_builder_history_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fl_builder_history_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fl_builder_history_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fl_builder_history_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fl_builder_launched'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fl_builder_launched'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fl_builder_launched'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fl_builder_launched'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fl_builder_template_global'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fl_builder_template_global'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fl_builder_template_global'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fl_builder_template_global'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fl_builder_draft'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fl_builder_draft'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fl_builder_draft'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fl_builder_draft'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fl_builder_template_dynamic_editing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fl_builder_template_dynamic_editing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fl_builder_template_dynamic_editing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fl_builder_template_dynamic_editing'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fl_builder_site_editor_temp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fl_builder_site_editor_temp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fl_builder_site_editor_temp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fl_builder_site_editor_temp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fl_builder_user_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fl_builder_user_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fl_builder_user_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fl_builder_user_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fl_builder_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fl_builder_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fl_builder_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fl_builder_layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fl_builder_browser_stats'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fl_builder_browser_stats'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fl_builder_browser_stats'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fl_builder_browser_stats'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fl_theme_layout_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fl_theme_layout_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fl_theme_layout_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fl_theme_layout_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fl_theme_layout_hook'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fl_theme_layout_hook'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fl_theme_layout_hook'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fl_theme_layout_hook'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fl_theme_builder_locations'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fl_theme_builder_locations'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fl_theme_builder_locations'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fl_theme_builder_locations'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
