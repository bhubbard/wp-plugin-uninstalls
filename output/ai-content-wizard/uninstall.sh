#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'acw_timeout_probe_last'
wp option delete 'ai_content_wizard_wizard_completed'
wp option delete 'ai_content_wizard_completed_steps'
wp option delete 'ai_content_wizard_plugin_version'
wp option delete 'ai_content_wizard_redirect_on_activation'
wp option delete 'active_sitewide_plugins'
wp option delete 'ai_content_wizard_content_plan_notice_dismissed'

# Delete Transients
wp transient delete 'ai_content_wizard_image_model_changed'
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'ai_content_wizard_generate_post_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
