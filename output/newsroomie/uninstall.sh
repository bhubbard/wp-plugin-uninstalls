#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'newsroomie_lead_tag'
wp option delete 'newsroomie_new_lead_tag'
wp option delete 'newsroomie_new_google_user_tag'
wp option delete 'newsroomie_new_linkedin_user_tag'
wp option delete 'newsroomie_api_token'
wp option delete 'newsroomie_leads_cta_title'
wp option delete 'newsroomie_leads_cta_body'
wp option delete 'newsroomie_leads_cta_email_placeholder'
wp option delete 'newsroomie_leads_cta_unlock_btn'
wp option delete 'newsroomie_leads_cta_google_btn'
wp option delete 'newsroomie_leads_cta_linkedin_btn'
wp option delete 'newsroomie_modal_leads_cta_success_title'
wp option delete 'newsroomie_modal_leads_cta_success_body'
wp option delete 'newsroomie_modal_leads_cta_failed_title'
wp option delete 'newsroomie_modal_leads_cta_failed_body'
wp option delete 'newsroomie_lead_email_subject'
wp option delete 'newsroomie_lead_email_from_name'
wp option delete 'newsroomie_lead_email_from_email'
wp option delete 'newsroomie_lead_email_message'
wp option delete 'newsroomie_tenant'
wp option delete 'newsroomie_sync_to'
wp option delete 'newsroomie_sdk_config'
wp option delete 'newsroomie_push_enabled'
wp option delete 'newsroomie_push_immediate'
wp option delete 'newsroomie_subscriber_cta_title'
wp option delete 'newsroomie_subscriber_cta_body'
wp option delete 'newsroomie_subscriber_cta_subscribe_btn'
wp option delete 'newsroomie_subscriber_cta_login_btn'
wp option delete 'newsroomie_subscriber_cta_subscribe_link'
wp option delete 'newsroomie_subscriber_cta_login_link'
wp option delete 'newsroomie_modal_text'
wp option delete 'newsroomie_modal_email_placeholder'
wp option delete 'newsroomie_modal_register_button'
wp option delete 'newsroomie_modal_google_button'
wp option delete 'newsroomie_modal_linkedin_button'
wp option delete 'newsroomie_modal_success_title'
wp option delete 'newsroomie_modal_success_body'
wp option delete 'newsroomie_hash_key'

# Delete Transients
wp transient delete 'newsroomie_tagging_options_cleared'
wp transient delete 'newsroomie_is_api_token_valid'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'account_locked'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'account_locked'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'account_locked'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'account_locked'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_banned'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_banned'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_banned'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_banned'"
