-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('optin_timer', 'optin_type', 'lightbox-layout', 'flyer-layout', 'stickytop-layout', 'wp_editor_data', 'post_id', 'page_id', 'optin_session_value', 'optin_session_input', 'optin_mailchimp_api', 'optin_mailchimp_content', 'optin_upload_media', 'layout_checkbox', 'layout_custom', 'is_home', 'mc_list');

