#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wsnm_subscribe_confirmation_status'
wp option delete 'wsnm_form_recaptcha_status'
wp option delete 'wsnm_recaptcha_site_key'
wp option delete 'wsnm_recaptcha_secret_key'
wp option delete 'wsnm_mode'
wp option delete 'wsnm_btn_background_color'
wp option delete 'wsnm_btn_text_color'
wp option delete 'wsnm_button_display'
wp option delete 'wsnm_subscribe_confirmation_email'
wp option delete 'wsnm_subscribe_confirmation_email_subject'
wp option delete 'wsnm_subscribe_notification_email'
wp option delete 'wsnm_subscribe_notification_email_subject'
wp option delete 'wsnm_form_first_last_name'
wp option delete 'wsnm_btn_text'
wp option delete 'wsnm_modal_title'
wp option delete 'wsnm_pre_form_content'
wp option delete 'wsnm_after_form_content'
wp option delete 'wsnm_hubspot_enabled'
wp option delete 'wsnm_hubspot_token'
wp option delete 'wsnm_hubspot_portal_id'
wp option delete 'wsnm_db_version'

# Delete Transients
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wsnm_hubspot_contact_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wsnm_hubspot_contact_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wsnm_hubspot_contact_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wsnm_hubspot_contact_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wsnm_hubspot_synced_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wsnm_hubspot_synced_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wsnm_hubspot_synced_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wsnm_hubspot_synced_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wsnm_hubspot_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wsnm_hubspot_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wsnm_hubspot_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wsnm_hubspot_error'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wsnm_product_pause'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wsnm_product_pause'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wsnm_product_pause'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wsnm_product_pause'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wsnm_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wsnm_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wsnm_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wsnm_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wsnm_action_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wsnm_action_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wsnm_action_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wsnm_action_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wsnm_action_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wsnm_action_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wsnm_action_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wsnm_action_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wsnm_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wsnm_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wsnm_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wsnm_product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wsnm_variation_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wsnm_variation_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wsnm_variation_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wsnm_variation_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wsnm_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wsnm_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wsnm_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wsnm_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wsnm_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wsnm_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wsnm_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wsnm_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wsnm_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wsnm_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wsnm_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wsnm_email'"
