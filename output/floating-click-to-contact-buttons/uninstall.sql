-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hienchuthich', 'phoneNumberMevivu', 'textOnButtonMevivu', 'tawktocodeMevivu', 'fanpageIDMevivu', 'zaloPhoneMevivu', 'googlemap', 'contactFormMevivu', 'plugin_options');

