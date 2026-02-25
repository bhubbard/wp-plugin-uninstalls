-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'wpm_gravity_conversational_licenses', 'gravity_conversation_field_slug', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%';

