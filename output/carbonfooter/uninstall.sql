-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('carbonfooter_greenhost', 'carbonfooter_last_processed', 'active_sitewide_plugins', 'carbonfooter_widget_background_color', 'carbonfooter_widget_text_color', 'carbonfooter_display_setting', 'carbonfooter_widget_style', 'carbonfooter_average_emissions', 'carbonfooter_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE 'carbonfooter_processing_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_carbon_emissions_updated', '_carbon_emissions', '_carbon_resources');
DELETE FROM wp_usermeta WHERE meta_key IN ('_carbon_emissions_updated', '_carbon_emissions', '_carbon_resources');
DELETE FROM wp_termmeta WHERE meta_key IN ('_carbon_emissions_updated', '_carbon_emissions', '_carbon_resources');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_carbon_emissions_updated', '_carbon_emissions', '_carbon_resources');

