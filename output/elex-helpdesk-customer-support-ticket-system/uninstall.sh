#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wsdesk_version_%'"
wp option delete 'wsdesk_pack'
wp option delete 'wsdesk_setup_wizard'
wp option delete 'elex_last_scheduled_time'
wp option delete 'wsdesk_agent_common_signature'
wp option delete 'wsdesk_scheduled_triggers'
wp option delete 'wsdesk_support_page'
wp option delete 'wsdesk_pay_for_detection_rule'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%pay_forsupport_child_of_parent'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%wsdesk_pay_for_detection_got'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%wsdesk_pay_for_support_histry'"
wp option delete 'wsdesk_pay_for_support_complete_history'
wp option delete 'wsdesk_activation_status'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_review_never_ask_again'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_review_will_do_it_later'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_troubleshoot_never_ask_again'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_email'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_licence_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_instance_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_activation_status'"

# Delete Transients
wp transient delete '_wsdesk_welcome_screen_activation_redirect'

# Clear Cron Jobs
wp cron event delete 'start_scheduled_trigger_cron'
wp cron event delete 'crm_email_crawler'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wsdesk_tags'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wsdesk_tags'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wsdesk_tags'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wsdesk_tags'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wsdesk_agent_signature'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wsdesk_agent_signature'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wsdesk_agent_signature'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wsdesk_agent_signature'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'child_users_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'child_users_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'child_users_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'child_users_list'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wsdesk_sms_phone_no'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wsdesk_sms_phone_no'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wsdesk_sms_phone_no'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wsdesk_sms_phone_no'"
