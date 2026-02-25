#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mc_interest_groups'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'mc_show_interest_groups_%'"
wp option delete 'mc_merge_vars'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'mc_mv_%'"
wp option delete 'mc_list_id'
wp option delete 'mc_header_content'
wp option delete 'mc_subheader_content'
wp option delete 'mc_submit_text'
wp option delete 'mc_use_unsub_link'
wp option delete 'mc_update_existing'
wp option delete 'mc_double_optin'
wp option delete 'mc_custom_style'
wp option delete 'mailchimp_sf_lists'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'mailchimp_sf_merge_fields_%'"
wp option delete 'mc_user'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'mailchimp_sf_interest_groups_%'"
wp option delete 'mailchimp_sf_last_sync_time'
wp option delete 'mailchimp_sf_user_sync_start_cta_shown'
wp option delete 'mailchimp_sf_waiting_for_login'
wp option delete 'mc_api_key'
wp option delete 'mc_nuke_all_styles'
wp option delete 'mc_form_border_width'
wp option delete 'mc_form_border_color'
wp option delete 'mc_form_text_color'
wp option delete 'mc_form_background'
wp option delete 'mailchimp_sf_access_token'
wp option delete 'mailchimp_sf_auth_error'
wp option delete 'mc_datacenter'
wp option delete 'mailchimp_sf_user_sync_running'
wp option delete 'mc_merge_field_migrate'
wp option delete 'mc_list_name'
wp option delete 'mc_email_type_option'
wp option delete 'mc_version'
wp option delete 'mc_rewards'

# Delete Transients
wp transient delete 'mailchimp_sf_oauth_secret'
wp transient delete 'mailchimp_sf_cancel_user_sync_process'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

