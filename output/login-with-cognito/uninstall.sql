-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('host_name', 'new_registration', 'mo_oauth_admin_email', 'mo_oauth_admin_phone', 'mo_oauth_admin_customer_key', 'mo_oauth_apps_list', 'mo_oauth_client_custom_token_endpoint_no_csecret', 'mo_oauth_client_disable_authorization_header', 'mo_oauth_attr_name_list', 'mo_oauth_client_notice_messages', 'mo_attr_option', 'mo_oauth_client_show_mo_server_message', 'verify_customer', 'mo_oauth_admin_api_key', 'password', 'mo_oauth_admin_fname', 'mo_oauth_admin_lname', 'mo_oauth_admin_company', 'mo_oauth_icon_width', 'mo_oauth_icon_height', 'mo_oauth_icon_margin', 'mo_oauth_icon_configure_css', 'mo_oauth_redirect_url', 'mo_oauth_authorizations', 'message', 'mo_oauth_new_customer', 'customer_token', 'mo_oauth_registration_status', 'mo_oauth_message');
DELETE FROM wp_options WHERE option_name LIKE '%_scope';
DELETE FROM wp_options WHERE option_name LIKE '%_client_id';
DELETE FROM wp_options WHERE option_name LIKE '%_client_secret';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dismissed_wp_pointers');
DELETE FROM wp_usermeta WHERE meta_key IN ('dismissed_wp_pointers');
DELETE FROM wp_termmeta WHERE meta_key IN ('dismissed_wp_pointers');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dismissed_wp_pointers');

