-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sib_push.last_send_time', 'wc_sendinblue_settings', 'sib_subscription_option', 'sib_signup_option', 'sib_confirm_option', 'sib_home_option', 'sib_sync_users', 'sib_use_apiv2', 'sib_service_worker_install_exception', 'sib_service_worker_uninstall_exception', 'sib_old_form_id');
DELETE FROM wp_options WHERE option_name LIKE 'sib_credit_%';
DELETE FROM wp_options WHERE option_name LIKE 'sib_smtp_status_%';
DELETE FROM wp_options WHERE option_name LIKE 'sib_attributes_%';
DELETE FROM wp_options WHERE option_name LIKE 'sib_template_%';
DELETE FROM wp_options WHERE option_name LIKE 'sib_list_%';
DELETE FROM wp_options WHERE option_name LIKE 'sib_segment_%';
DELETE FROM wp_options WHERE option_name LIKE 'sib_senders_%';
DELETE FROM wp_options WHERE option_name LIKE 'sib_totalusers_%';
DELETE FROM wp_options WHERE option_name LIKE 'sib_campaigns_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sib_push_send_notification', 'sib_push_send_notification_delay_seconds', 'sib_push_target_brevo_segment_ids', 'sib_push_target_brevo_list_ids', 'sib_push_target_tags', 'sib_push_meta_box_present', 'sib_push_target_segment_ids');
DELETE FROM wp_usermeta WHERE meta_key IN ('sib_push_send_notification', 'sib_push_send_notification_delay_seconds', 'sib_push_target_brevo_segment_ids', 'sib_push_target_brevo_list_ids', 'sib_push_target_tags', 'sib_push_meta_box_present', 'sib_push_target_segment_ids');
DELETE FROM wp_termmeta WHERE meta_key IN ('sib_push_send_notification', 'sib_push_send_notification_delay_seconds', 'sib_push_target_brevo_segment_ids', 'sib_push_target_brevo_list_ids', 'sib_push_target_tags', 'sib_push_meta_box_present', 'sib_push_target_segment_ids');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sib_push_send_notification', 'sib_push_send_notification_delay_seconds', 'sib_push_target_brevo_segment_ids', 'sib_push_target_brevo_list_ids', 'sib_push_target_tags', 'sib_push_meta_box_present', 'sib_push_target_segment_ids');

