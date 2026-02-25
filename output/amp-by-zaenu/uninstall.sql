-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zaenu_logo', 'zaenu_icon', 'zaenu_analytics', 'zaenu_adsenseid', 'zaenu_adsenseslot');

