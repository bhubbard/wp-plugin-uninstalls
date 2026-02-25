<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lienhe_trai');
delete_site_option('lienhe_trai');
delete_option('phonedisable');
delete_site_option('phonedisable');
delete_option('phoneNumberpht');
delete_site_option('phoneNumberpht');
delete_option('textOnButtonpht');
delete_site_option('textOnButtonpht');
delete_option('tawktocodepht');
delete_site_option('tawktocodepht');
delete_option('fbdisable');
delete_site_option('fbdisable');
delete_option('fanpageIDpht');
delete_site_option('fanpageIDpht');
delete_option('fanpagecaptpht');
delete_site_option('fanpagecaptpht');
delete_option('zalodisable');
delete_site_option('zalodisable');
delete_option('zaloPhonepht');
delete_site_option('zaloPhonepht');
delete_option('zalocaptpht');
delete_site_option('zalocaptpht');
delete_option('skypedisable');
delete_site_option('skypedisable');
delete_option('skypepht');
delete_site_option('skypepht');
delete_option('skypecaptpht');
delete_site_option('skypecaptpht');
delete_option('viberdisable');
delete_site_option('viberdisable');
delete_option('viberPhonepht');
delete_site_option('viberPhonepht');
delete_option('vibercaptpht');
delete_site_option('vibercaptpht');
delete_option('emaildisable');
delete_site_option('emaildisable');
delete_option('emailpht');
delete_site_option('emailpht');
delete_option('emailcaptpht');
delete_site_option('emailcaptpht');
delete_option('mapdisable');
delete_site_option('mapdisable');
delete_option('googlemap');
delete_site_option('googlemap');
delete_option('googlemapcapt');
delete_site_option('googlemapcapt');
delete_option('contactdisable');
delete_site_option('contactdisable');
delete_option('contactFormpht');
delete_site_option('contactFormpht');
delete_option('contactcaptpht');
delete_site_option('contactcaptpht');
delete_option('manhungpht');
delete_site_option('manhungpht');
delete_option('hienchuthich');
delete_site_option('hienchuthich');
delete_option('plugin_options');
delete_site_option('plugin_options');

