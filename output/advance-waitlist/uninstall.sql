-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ced_awl_ced_notifiaction_message', 'ced_awl_ced_add_button', 'ced_awl_ced_successfull_registration', 'ced_feed', 'ced_feed_awl', 'awl_link_text');
DELETE FROM wp_options WHERE option_name LIKE '%ced_activation_pageid';
DELETE FROM wp_options WHERE option_name LIKE '%ced_deactivation_mode';
DELETE FROM wp_options WHERE option_name LIKE '%email_custum_mode';
DELETE FROM wp_options WHERE option_name LIKE '%email_custum_content';
DELETE FROM wp_options WHERE option_name LIKE '%ced_successfull_registration';
DELETE FROM wp_options WHERE option_name LIKE '%ced_add_button';
DELETE FROM wp_options WHERE option_name LIKE '%status_out_of_stock_option';
DELETE FROM wp_options WHERE option_name LIKE '%ced_notifiaction_message';
DELETE FROM wp_options WHERE option_name LIKE 'ced_awl_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_waitlist_button', '_manage_stock', 'user_mode', 'reservation', '_stock_status', '_stock');
DELETE FROM wp_usermeta WHERE meta_key IN ('_waitlist_button', '_manage_stock', 'user_mode', 'reservation', '_stock_status', '_stock');
DELETE FROM wp_termmeta WHERE meta_key IN ('_waitlist_button', '_manage_stock', 'user_mode', 'reservation', '_stock_status', '_stock');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_waitlist_button', '_manage_stock', 'user_mode', 'reservation', '_stock_status', '_stock');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%ced_wait_list';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%ced_wait_list';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%ced_wait_list';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%ced_wait_list';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%ced_waitlist_meta';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%ced_waitlist_meta';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%ced_waitlist_meta';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%ced_waitlist_meta';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%email_custum_content';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%email_custum_content';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%email_custum_content';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%email_custum_content';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%email_custum_mode';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%email_custum_mode';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%email_custum_mode';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%email_custum_mode';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%user_email_notofication';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%user_email_notofication';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%user_email_notofication';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%user_email_notofication';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%ced_waitlist_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%ced_waitlist_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%ced_waitlist_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%ced_waitlist_id';

