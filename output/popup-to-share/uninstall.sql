-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cabecera_popup', 'textocuer_popup', 'publi', 'facebook', 'twitter', 'google');

