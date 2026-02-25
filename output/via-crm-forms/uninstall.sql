-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gravityformsaddon_via-gravityforms-salesforce_settings');

