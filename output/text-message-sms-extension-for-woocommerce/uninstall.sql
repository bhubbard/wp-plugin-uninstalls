-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpbiztextwc_placeholders', 'wpbiztextwc_placeholders_fixed', 'wpbiztextwc_enable_status_changes_chbx', 'wpbiztextwc_enable_status_changes_admin_chbx', 'wpbiztextwc_hidden_field', 'wpbiztextwc_add_mobile_field', 'wpbiztextwc_mobile_field_info', 'wpbiztextwc_mobile_field_requried', 'wpbiztextwc_mobile_field_use_phone', 'wpbiztextwc_set_change_order_admin_txtarea', 'wpbiztextwc_set_change_order_txtarea', 'wpbiztextwc_notif_number', 'wpbiztextwc_notif_number_nickname', 'wpbiztextwc_biztext_id');
DELETE FROM wp_options WHERE option_name LIKE '%_notif_number';
DELETE FROM wp_options WHERE option_name LIKE 'wpbiztextwc_%';
DELETE FROM wp_options WHERE option_name LIKE '%_order_txtarea';
DELETE FROM wp_options WHERE option_name LIKE '%_order_admin_chbx';
DELETE FROM wp_options WHERE option_name LIKE '%_order_admin_txtarea';
DELETE FROM wp_options WHERE option_name LIKE '%_order_chbx';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_billing_mobile_wpbiztextwc_phone');
DELETE FROM wp_usermeta WHERE meta_key IN ('_billing_mobile_wpbiztextwc_phone');
DELETE FROM wp_termmeta WHERE meta_key IN ('_billing_mobile_wpbiztextwc_phone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_billing_mobile_wpbiztextwc_phone');

