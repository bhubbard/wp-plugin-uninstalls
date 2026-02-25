-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('playSMS-settings', 'playSMS-apiKey', 'playSMS-apiPass', 'playSMS-apiHeader', 'PlaySMS_events_options', 'smsApi-senderHeaders');

