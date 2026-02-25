-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('age_verification_logo', 'age_verification_yes_button_color', 'age_verification_no_button_color', 'age_verification_min_age');

