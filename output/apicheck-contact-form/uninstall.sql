-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('apicheckcontactform_enable_disabled', 'apicheckcontactform_validate_number_addition', 'apicheckcontactform_validate_email', 'apicheckcontactform_api_key', 'apicheckcontactform_enabled_countries', 'apicheckcontactform_all_countries_enabled');

