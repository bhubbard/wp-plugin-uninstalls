-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('macsms_google_access_token', 'macsms_twilio_phone_number', 'macsms_plivo_phone', 'macsms_sinch_phone', 'macsms_telnyx_phone', 'macsms_bandwidth_account_id', 'macsms_bandwidth_phone', 'macsms_bandwidth_app_id', 'macsms_settings');

