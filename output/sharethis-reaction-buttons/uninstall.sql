-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sharethis_inline-reaction_settings', 'sharethis_inline-reactions', 'sharethis_reaction_settings', 'sharethis_property_id', 'sharethis_first_product', 'sharethis_reaction', 'sharethis_token', 'sharethis_button_config', 'sharethis_inline-reaction', 'st-reaction-activation', 'st-reaction-connection');
DELETE FROM wp_options WHERE option_name LIKE '%_on';
DELETE FROM wp_options WHERE option_name LIKE '%_off';

