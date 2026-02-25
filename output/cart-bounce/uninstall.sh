#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'idea_cb_settings'
wp option delete 'idea_cb_db_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"

# Delete Transients
wp transient delete 'cb_wa_vars_validation'
wp transient delete 'idea_cb_whatsapp_templates'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cb_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cb_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cb_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cb_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cb_sources'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cb_sources'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cb_sources'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cb_sources'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cb_email_subject'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cb_email_subject'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cb_email_subject'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cb_email_subject'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cb_notification_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cb_notification_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cb_notification_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cb_notification_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cb_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cb_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cb_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cb_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cb_duration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cb_duration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cb_duration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cb_duration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cb_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cb_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cb_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cb_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cb_wa_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cb_wa_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cb_wa_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cb_wa_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cb_wa_template_vars'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cb_wa_template_vars'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cb_wa_template_vars'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cb_wa_template_vars'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cb_media_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cb_media_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cb_media_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cb_media_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cb_media_format'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cb_media_format'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cb_media_format'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cb_media_format'"
