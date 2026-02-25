#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'oasiswf_email_settings'
wp option delete 'oasiswf_custom_workflow_terminology'
wp option delete 'oasiswf_priority_setting'
wp option delete 'oasiswf_default_due_days'
wp option delete 'oasiswf_reminder_days'
wp option delete 'oasiswf_reminder_days_after'
wp option delete 'oasiswf_activate_workflow'
wp option delete 'oasiswf_show_wfsettings_on_post_types'
wp option delete 'oasiswf_activate_revision_process'
wp option delete 'oasiswf_review_notice'
wp option delete 'oasiswf_review_rating_interval'
wp option delete 'oasiswf_workflow_completed_post_count'
wp option delete 'oasiswf_publish_date_setting'
wp option delete 'oasiswf_show_upgrade_notice'
wp option delete 'oasiswf_path'
wp option delete 'oasiswf_placeholders'
wp option delete 'oasiswf_status'
wp option delete 'oasiswf_process'
wp option delete 'oasiswf_info'
wp option delete 'oasiswf_skip_workflow_roles'
wp option delete 'oasiswf_hide_workflow_graphic'
wp option delete 'oasiswf_view_other_users_inbox_roles'
wp option delete 'oasiswf_abort_workflow_roles'
wp option delete 'oasiswf_review_process_setting'
wp option delete 'oasiswf_roles_can_bulk_approval'

# Delete Transients
wp transient delete 'ow-cache-active-workflows'
wp transient delete 'owf_activation_redirect'

# Clear Cron Jobs
wp cron event delete 'oasiswf_email_schedule'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oasis_is_in_workflow'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oasis_is_in_workflow'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oasis_is_in_workflow'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oasis_is_in_workflow'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oasis_task_priority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oasis_task_priority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oasis_task_priority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oasis_task_priority'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oasis_original'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oasis_original'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oasis_original'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oasis_original'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oasis_current_revision'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oasis_current_revision'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oasis_current_revision'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oasis_current_revision'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
