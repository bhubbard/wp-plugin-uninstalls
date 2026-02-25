-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('safelayout_buttons_options_rate', 'safelayout_buttons_options_upgrade', 'safelayout_icons_packs');

