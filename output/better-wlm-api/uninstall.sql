-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bwa_version', 'bwa_option_send_confirmation_email', 'bwa_option_check_if_user_exists', 'bwa_option_extend_if_user_exists', 'bwa_option_update_user_data', 'bwa_option_destination_email', 'bwa_options_email_include_password', 'rmt_option_create_login_link_existing_users', 'rmt_option_page_change_password', 'rmt_option_create_login_link_new_users');

