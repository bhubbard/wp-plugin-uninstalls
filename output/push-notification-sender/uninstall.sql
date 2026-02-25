-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pns_google_api_key', 'pns_send_to_android_via', 'pns_ios_certi_name', 'pns_send_via_production', 'pns_send_to_ios', 'pns_send_to_android', 'ios_certi_name', 'pns_on_new_post_publish', 'pns_on_new_page_save', 'pns_on_new_user_register', 'pns_on_new_comment_post', 'pns_send_via_sandbox', 'pns_ios_certi_path', 'pns_ios_certificate_path', 'pns_ios_certificate_name');

