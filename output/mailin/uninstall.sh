#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sib_push.last_send_time'
wp option delete 'wc_sendinblue_settings'
wp option delete 'sib_subscription_option'
wp option delete 'sib_signup_option'
wp option delete 'sib_confirm_option'
wp option delete 'sib_home_option'
wp option delete 'sib_sync_users'
wp option delete 'sib_use_apiv2'
wp option delete 'sib_service_worker_install_exception'
wp option delete 'sib_service_worker_uninstall_exception'
wp option delete 'sib_old_form_id'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_sib_credit_%' OR option_name LIKE '_site_transient_sib_credit_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_sib_smtp_status_%' OR option_name LIKE '_site_transient_sib_smtp_status_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_sib_attributes_%' OR option_name LIKE '_site_transient_sib_attributes_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_sib_template_%' OR option_name LIKE '_site_transient_sib_template_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_sib_list_%' OR option_name LIKE '_site_transient_sib_list_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_sib_segment_%' OR option_name LIKE '_site_transient_sib_segment_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_sib_senders_%' OR option_name LIKE '_site_transient_sib_senders_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_sib_totalusers_%' OR option_name LIKE '_site_transient_sib_totalusers_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_sib_campaigns_%' OR option_name LIKE '_site_transient_sib_campaigns_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sib_push_send_notification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sib_push_send_notification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sib_push_send_notification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sib_push_send_notification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sib_push_send_notification_delay_seconds'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sib_push_send_notification_delay_seconds'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sib_push_send_notification_delay_seconds'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sib_push_send_notification_delay_seconds'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sib_push_target_brevo_segment_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sib_push_target_brevo_segment_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sib_push_target_brevo_segment_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sib_push_target_brevo_segment_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sib_push_target_brevo_list_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sib_push_target_brevo_list_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sib_push_target_brevo_list_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sib_push_target_brevo_list_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sib_push_target_tags'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sib_push_target_tags'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sib_push_target_tags'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sib_push_target_tags'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sib_push_meta_box_present'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sib_push_meta_box_present'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sib_push_meta_box_present'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sib_push_meta_box_present'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sib_push_target_segment_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sib_push_target_segment_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sib_push_target_segment_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sib_push_target_segment_ids'"
