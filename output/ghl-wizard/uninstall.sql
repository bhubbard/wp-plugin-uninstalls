-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hlwpw_locationId', 'hlwpw_client_id', 'hlwpw_client_secret', 'hlwpw_access_token', 'hlwpw_refresh_token', 'hlwpw_location_connected', 'default_no_access_redirect_to', 'lcw_post_types', 'lcw_hide_admin_bar', 'lcw_enable_login_redirect', 'lcw_login_redirect_page', 'lcw_enable_logout_redirect', 'lcw_logout_redirect_page', 'lcw_enable_chat', 'lcw_auth_key', 'hlwpw_order_status', 'lcw_association_id', 'leadconnectorwizardpro_license_options', 'lcw_disable_new_user_email', 'lcw_autologin_create_new_user', 'lcw_tag_to_autologin_new_user', 'lcw_tag_to_auto_login_user', 'lcw_db_table_exists', 'lcw_db_version', 'lcw_chat_id', 'lcw_default_order_tag', 'hlwpw_location_tags', 'hlwpw_location_campaigns', 'hlwpw_location_wokflow', 'is_access_token_valid', 'hlwpw_location_custom_values', 'lcw_location_cutom_fields');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('hlwpw_logged_in_user', 'hlwpw_required_tags', 'hlwpw_and_required_tags', 'hlwpw_no_access_redirect_to', 'lcw_ld_auto_enrollment_tags', 'hlwpw_no_access_action', 'hlwpw_location_tags', 'hlwpw_location_campaigns', 'hlwpw_location_wokflow', 'hlwpw_order_status_tag', 'first_name', 'last_name', '_variation_tag');
DELETE FROM wp_usermeta WHERE meta_key IN ('hlwpw_logged_in_user', 'hlwpw_required_tags', 'hlwpw_and_required_tags', 'hlwpw_no_access_redirect_to', 'lcw_ld_auto_enrollment_tags', 'hlwpw_no_access_action', 'hlwpw_location_tags', 'hlwpw_location_campaigns', 'hlwpw_location_wokflow', 'hlwpw_order_status_tag', 'first_name', 'last_name', '_variation_tag');
DELETE FROM wp_termmeta WHERE meta_key IN ('hlwpw_logged_in_user', 'hlwpw_required_tags', 'hlwpw_and_required_tags', 'hlwpw_no_access_redirect_to', 'lcw_ld_auto_enrollment_tags', 'hlwpw_no_access_action', 'hlwpw_location_tags', 'hlwpw_location_campaigns', 'hlwpw_location_wokflow', 'hlwpw_order_status_tag', 'first_name', 'last_name', '_variation_tag');
DELETE FROM wp_commentmeta WHERE meta_key IN ('hlwpw_logged_in_user', 'hlwpw_required_tags', 'hlwpw_and_required_tags', 'hlwpw_no_access_redirect_to', 'lcw_ld_auto_enrollment_tags', 'hlwpw_no_access_action', 'hlwpw_location_tags', 'hlwpw_location_campaigns', 'hlwpw_location_wokflow', 'hlwpw_order_status_tag', 'first_name', 'last_name', '_variation_tag');

