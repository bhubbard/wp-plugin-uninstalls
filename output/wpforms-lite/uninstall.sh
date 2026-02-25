#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpforms_builder_opened_date'
wp option delete 'wpforms_rotation_activated_plugins'
wp option delete 'wpforms_admin_notices'
wp option delete 'wpforms_activated'
wp option delete 'wpforms_constant_contact'
wp option delete 'wpforms_settings'
wp option delete 'wpforms_activation_redirect'
wp option delete 'wpforms_forms_first_created'
wp option delete 'wpforms_install'
wp option delete 'wpforms_version'
wp option delete 'wpforms_version_lite'
wp option delete 'wpforms_license'
wp option delete 'classic-editor-replace'
wp option delete 'wpforms_providers'
wp option delete 'wpforms_constant_contact_signup'
wp option delete 'wpforms_lite_settings_upgrade'
wp option delete 'wpforms_challenge'
wp option delete 'wpforms_notifications'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_source'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_date'"
wp option delete 'wp_mail_smtp_source'
wp option delete 'wp_mail_smtp_activation_prevent_redirect'
wp option delete 'uap_automator_settings'
wp option delete 'uncannyautomator_source'
wp option delete 'uncannyautomator_date'
wp option delete 'wpforms_splash_version'
wp option delete 'wpforms_imported'
wp option delete 'wpcf7'
wp option delete 'ninja_forms_settings'
wp option delete 'wp_mail_smtp'
wp option delete 'active_sitewide_plugins'
wp option delete 'wpforms_email_summaries_shown_notifications'
wp option delete 'wpforms_crypto_secret_key'
wp option delete 'fresh_site'
wp option delete 'wpforms_square_connections'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%'"
wp option delete 'wpforms_pointers'
wp option delete 'wpforms_connect_token'
wp option delete 'wpforms_connect'
wp option delete 'wpforms_review'
wp option delete 'wpconsent_activated'
wp option delete 'sugar_calendar_activated_time'
wp option delete 'duplicator_install_info'
wp option delete 'duplicator_pro_install_info'
wp option delete 'uncanny_automator_v6_options_migrated'
wp option delete 'wpforms_preview_page'

# Delete Transients
wp transient delete 'wpforms_activation_redirect'
wp transient delete 'wpforms_just_activated'
wp transient delete 'wpforms_dash_widget_lite_entries_by_form'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'
wp transient delete 'wpforms_lite_just_activated'

# Clear Cron Jobs
wp cron event delete 'wpforms_email_summaries_cron'
wp cron event delete 'wpforms_weekly_entries_count_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpforms_builder_settings_collapsable_block_states'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpforms_builder_settings_collapsable_block_states'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpforms_builder_settings_collapsable_block_states'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpforms_builder_settings_collapsable_block_states'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpforms_builder_notification_states'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpforms_builder_notification_states'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpforms_builder_notification_states'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpforms_builder_notification_states'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpforms_zapier'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpforms_zapier'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpforms_zapier'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpforms_zapier'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpforms_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpforms_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpforms_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpforms_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpforms_entries_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpforms_entries_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpforms_entries_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpforms_entries_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpforms_admin_form_embed_wizard'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpforms_admin_form_embed_wizard'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpforms_admin_form_embed_wizard'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpforms_admin_form_embed_wizard'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpforms_admin_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpforms_admin_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpforms_admin_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpforms_admin_notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpforms_dash_widget_graph_style'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpforms_dash_widget_graph_style'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpforms_dash_widget_graph_style'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpforms_dash_widget_graph_style'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpforms_revisions_disabled_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpforms_revisions_disabled_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpforms_revisions_disabled_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpforms_revisions_disabled_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wpforms_builder_ai_form_chat_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wpforms_builder_ai_form_chat_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wpforms_builder_ai_form_chat_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wpforms_builder_ai_form_chat_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'metaboxhidden_dashboard'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'metaboxhidden_dashboard'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'metaboxhidden_dashboard'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'metaboxhidden_dashboard'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpforms_entries_count_previous_week'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpforms_entries_count_previous_week'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpforms_entries_count_previous_week'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpforms_entries_count_previous_week'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpforms_entries_count_previous_week_skip_trends'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpforms_entries_count_previous_week_skip_trends'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpforms_entries_count_previous_week_skip_trends'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpforms_entries_count_previous_week_skip_trends'"
