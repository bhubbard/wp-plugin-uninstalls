<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('incilinfo_aracipucu');
delete_site_option('incilinfo_aracipucu');
delete_option('incilinfo_yenipencere');
delete_site_option('incilinfo_yenipencere');

