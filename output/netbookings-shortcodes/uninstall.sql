-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nb_business_id', 'nb_base_url', 'nb_primary_colour', 'nb_secondary_colour', 'nb_bathing_availability_active', 'nb_cards_active', 'nb_styling', 'nb_button_style', 'timezone_strong');
DELETE FROM wp_options WHERE option_name LIKE 'nb_xml_status_%';

