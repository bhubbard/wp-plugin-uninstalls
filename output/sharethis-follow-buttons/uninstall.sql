-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sharethis_follow', 'sharethis_first_product', 'sharethis_property_id', 'sharethis_token', 'sharethis_button_config', 'sharethis_inline-follow_settings', 'sharethis_inline-follow', 'sharethis_inline-follows', 'sharethis_follow_settings', 'st-follow-activation', 'st-follow-connection');
DELETE FROM wp_options WHERE option_name LIKE '%_on';
DELETE FROM wp_options WHERE option_name LIKE '%_off';

