-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('adrenalead_notifadz_profil', 'adrenalead_notifadz_token', 'adrenalead_notifadz_need_confirm_template', 'adrenalead_notifadz_confirm_template_id', 'adrenalead_notifadz_template_data', 'adrenalead_notifadz_tab', 'adrenalead_notifadz_ads', 'adrenalead_notifadz_send_push_on_publish', 'adrenalead_notifadz_device_targeted_on_publish', 'adrenalead_notifadz_ids', 'adrenalead_notifadz_script', 'adrenalead_notifadz_script_triggers_activated', 'adrenalead_notifadz_script_triggers', 'adrenalead_notifadz_worker', 'adrenalead_notifadz_account_id', 'adrenalead_notifadz_need_to_copy_ads');
DELETE FROM wp_options WHERE option_name LIKE 'adrenalead_notifadz_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('notifadz_adrenalead_send_push', 'notifadz_adrenalead_push_device', 'notifadz_adrenalead_sent_push');
DELETE FROM wp_usermeta WHERE meta_key IN ('notifadz_adrenalead_send_push', 'notifadz_adrenalead_push_device', 'notifadz_adrenalead_sent_push');
DELETE FROM wp_termmeta WHERE meta_key IN ('notifadz_adrenalead_send_push', 'notifadz_adrenalead_push_device', 'notifadz_adrenalead_sent_push');
DELETE FROM wp_commentmeta WHERE meta_key IN ('notifadz_adrenalead_send_push', 'notifadz_adrenalead_push_device', 'notifadz_adrenalead_sent_push');

