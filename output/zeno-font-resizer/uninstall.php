<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('zeno_font_resizer');
delete_site_option('zeno_font_resizer');
delete_option('zeno_font_resizer_ownelement');
delete_site_option('zeno_font_resizer_ownelement');
delete_option('zeno_font_resizer_resizeMax');
delete_site_option('zeno_font_resizer_resizeMax');
delete_option('zeno_font_resizer_resizeMin');
delete_site_option('zeno_font_resizer_resizeMin');
delete_option('zeno_font_resizer_resizeSteps');
delete_site_option('zeno_font_resizer_resizeSteps');
delete_option('zeno_font_resizer_letter');
delete_site_option('zeno_font_resizer_letter');
delete_option('zeno_font_resizer_cookieTime');
delete_site_option('zeno_font_resizer_cookieTime');
delete_option('zeno_font_resizer_ownid');
delete_site_option('zeno_font_resizer_ownid');

