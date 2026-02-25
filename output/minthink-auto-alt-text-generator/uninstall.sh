#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mt_auto_atg_site_id'
wp option delete 'mt_auto_atg_welcome_dismissed'
wp option delete 'mt_auto_atg_activation_time'
wp option delete 'mt_auto_atg_external_service_notice_dismissed'
wp option delete 'mt_auto_atg_feedback_dismissed'
wp option delete 'mt_auto_atg_feedback_shown'
wp option delete 'mt_auto_atg_low_credits_dismissed_month'
wp option delete 'mt_auto_atg_low_credits_dismissed'
wp option delete 'mt_auto_atg_last_server_ping'
wp option delete 'mt_auto_atg_user_email'
wp option delete 'mt_auto_atg_is_pro'
wp option delete 'mt_auto_atg_debug_mode'

# Delete Transients
wp transient delete 'mt_auto_atg_plugin_config'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_paid' OR option_name LIKE '_site_transient_%_paid'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
