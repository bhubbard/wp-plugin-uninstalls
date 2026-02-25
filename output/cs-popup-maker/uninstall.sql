-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_smart_preloader_pro_options', 'cs-popup', 'cs-popup-html');

