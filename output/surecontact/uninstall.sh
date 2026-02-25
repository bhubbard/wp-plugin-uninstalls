#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'surecontact_sync_batches'
wp option delete 'surecontact_sync_job_cancelled'
wp option delete 'surecontact_third_party_integrations'
wp option delete 'surecontact_workspace_uuid'
wp option delete 'surecontact_bearer_token'
wp option delete 'surecontact_connection_id'
wp option delete 'surecontact_last_status_sync'
wp option delete 'surecontact_last_bulk_sync'
wp option delete 'surecontact_last_field_sync'
wp option delete 'surecontact_synced_metadata'
wp option delete 'surecontact_contact_fields'
wp option delete 'surecontact_custom_metafields'
wp option delete 'surecontact_general_settings'
wp option delete 'surecontact_api_queue_table_version'
wp option delete 'surecontact_integrations_table_version'
wp option delete 'surecontact_db_version'

# Delete Transients
wp transient delete 'surecontact_api_circuit_breaker'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_surecontact_latepoint_tracked_%' OR option_name LIKE '_site_transient_surecontact_latepoint_tracked_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_surecontact_woo_processing_%' OR option_name LIKE '_site_transient_surecontact_woo_processing_%'"
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Clear Cron Jobs
wp cron event delete 'surecontact_suremembers_check_expirations'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcf-step-type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcf-step-type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcf-step-type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcf-step-type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcf-order-bumps'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcf-order-bumps'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcf-order-bumps'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcf-order-bumps'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'video_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'video_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'video_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'video_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'suremembers_user_access_group'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'suremembers_user_access_group'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'suremembers_user_access_group'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'suremembers_user_access_group'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_surecontact_review_tagged'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_surecontact_review_tagged'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_surecontact_review_tagged'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_surecontact_review_tagged'"
