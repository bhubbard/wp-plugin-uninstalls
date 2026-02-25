-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('konncofo_name_enabled', 'konncofo_name_label', 'konncofo_name_required', 'konncofo_name_placeholder', 'konncofo_email_enabled', 'konncofo_email_label', 'konncofo_email_required', 'konncofo_email_placeholder', 'konncofo_phone_enabled', 'konncofo_phone_label', 'konncofo_phone_required', 'konncofo_phone_placeholder', 'konncofo_address_enabled', 'konncofo_address_label', 'konncofo_address_required', 'konncofo_address_placeholder', 'konncofo_message_enabled', 'konncofo_message_label', 'konncofo_message_required', 'konncofo_message_placeholder', 'konncofo_submit_text', 'konncofo_success_message');

