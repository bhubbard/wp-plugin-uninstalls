#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wedevs_pm_pro_activation_blocked'
wp option delete 'cpm_version'
wp option delete 'wedevs_pm_pro_deactivated_on_update'
wp option delete 'pm_start_migration'
wp option delete 'pm_db_migration'
wp option delete 'pm_observe_migration'
wp option delete 'pm_migration_notice'
wp option delete 'pm_task_migration'
wp option delete 'pm_db_version'
wp option delete 'cpm_db_version'
wp option delete 'pm_pages'
wp option delete 'cpm_general'
wp option delete 'cpm_mails'
wp option delete 'cpm_page'
wp option delete 'cpmwoo_settings'
wp option delete 'cpm_integration'
wp option delete 'pm_upgrade'
wp option delete 'cpm_invoice'
wp option delete 'pm_migration_notice_2_3'
wp option delete 'pm_db_migration_2_3'
wp option delete 'pm_total_queue_2_3'
wp option delete 'pm_queue_complete_2_3'
wp option delete 'pm_migration_start_2_3'
wp option delete 'pm_capabilities'
wp option delete 'update_role_project_table'
wp option delete 'update_role_project_capabilities'
wp option delete 'update_role_project_users'
wp option delete 'pm_version'
wp option delete 'pm_installed'
wp option delete 'pm_frontend_slug'
wp option delete 'pm_frontend_dashboard_title'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'projectId_git_bit_hash_%'"
wp option delete 'imported_from_activecol'
wp option delete 'importing_from_activecol'
wp option delete 'imported_from_asana'
wp option delete 'importing_from_asana'
wp option delete 'imported_from_trello'
wp option delete 'importing_from_trello'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"

# Delete Transients
wp transient delete '_pm_setup_page_redirect'
wp transient delete 'pm_ai_models_cache'
wp transient delete 'pm_ai_models_fetching'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cpm_email_notification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cpm_email_notification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cpm_email_notification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cpm_email_notification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_project_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_project_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_project_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_project_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_completed_on'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_completed_on'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_completed_on'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_completed_on'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_due'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_due'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_due'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_due'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_completed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_completed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_completed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_completed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_milestone_privac'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_milestone_privac'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_milestone_privac'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_milestone_privac'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_milestone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_milestone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_milestone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_milestone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_message_privacy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_message_privacy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_message_privacy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_message_privacy'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_files'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_files'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_files'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_files'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tasklist_privacy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tasklist_privacy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tasklist_privacy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tasklist_privacy'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_start'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_start'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_start'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_start'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_completed_by'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_completed_by'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_completed_by'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_completed_by'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_task_privacy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_task_privacy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_task_privacy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_task_privacy'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_assigned'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_assigned'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_assigned'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_assigned'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'client_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'client_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'client_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'client_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'due_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'due_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'due_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'due_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'discount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'discount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'discount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'discount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'partial_payment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'partial_payment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'partial_payment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'partial_payment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'partial_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'partial_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'partial_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'partial_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'terms'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'terms'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'terms'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'terms'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'statue'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'statue'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'statue'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'statue'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cpmi_payment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cpmi_payment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cpmi_payment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cpmi_payment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'item'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'item'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'item'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'item'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hour'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hour'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hour'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hour'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bp_group_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bp_group_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bp_group_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bp_group_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_custom_section'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_custom_section'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_custom_section'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_custom_section'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_section_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_section_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_section_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_section_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_kanboard_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_kanboard_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_kanboard_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_kanboard_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pm_capability'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pm_capability'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pm_capability'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pm_capability'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'github'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'github'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'github'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'github'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bitbucket'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bitbucket'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bitbucket'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bitbucket'"
