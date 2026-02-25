-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('acurax_popunder_installed_date', 'acurax_popunder_array', 'acurax_popunder_timeout', 'acurax_popunder_service_banners', 'acurax_popunder_premium_ad', 'acurax_popunder_version_p', 'acurax_popunder_td');

