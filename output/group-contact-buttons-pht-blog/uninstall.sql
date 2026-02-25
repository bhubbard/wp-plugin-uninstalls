-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lienhe_trai', 'phonedisable', 'phoneNumberpht', 'textOnButtonpht', 'tawktocodepht', 'fbdisable', 'fanpageIDpht', 'fanpagecaptpht', 'zalodisable', 'zaloPhonepht', 'zalocaptpht', 'skypedisable', 'skypepht', 'skypecaptpht', 'viberdisable', 'viberPhonepht', 'vibercaptpht', 'emaildisable', 'emailpht', 'emailcaptpht', 'mapdisable', 'googlemap', 'googlemapcapt', 'contactdisable', 'contactFormpht', 'contactcaptpht', 'manhungpht', 'hienchuthich', 'plugin_options');

