-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('roomName', 'camambaChatBgImg', 'camambaChatBg', 'camambaFontColor', 'camambaCamBg', 'camambaLogoImg', 'camambaPowered');

