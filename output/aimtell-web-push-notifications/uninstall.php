<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aimtell_domain');
delete_site_option('aimtell_domain');
delete_option('aimtell_uid');
delete_site_option('aimtell_uid');
delete_option('aimtell_idSite');
delete_site_option('aimtell_idSite');
delete_option('aimtell_webpushid');
delete_site_option('aimtell_webpushid');

