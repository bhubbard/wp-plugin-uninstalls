#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rm_sample_data_imported'
wp option delete '_icegram_rm_activation_redirect'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_icegram'"
wp option delete 'ig_forms_imported'
wp option delete 'rainmaker_sample_form_imported'
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracker_activated'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_installed_on'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_api'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_client_id'"
wp option delete 'campaignmonitor_api'
wp option delete 'campaignmonitor_client_id'
wp option delete 'campaignmonitor_lists'
wp option delete 'ig_es_optintype'
wp option delete 'hubspot_api'
wp option delete 'hubspot_lists'
wp option delete 'mailchimp_api'
wp option delete 'mailchimp_double_optin'
wp option delete 'mailchimp_lists'
wp option delete 'rm_offer_bfcm_2025_icegram'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rm_form_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rm_form_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rm_form_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rm_form_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rm_form_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rm_form_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rm_form_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rm_form_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rm_raw_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rm_raw_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rm_raw_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rm_raw_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'icegram_message_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'icegram_message_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'icegram_message_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'icegram_message_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_time'"
