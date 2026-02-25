<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fazacrm_urlFazacrm');
delete_site_option('fazacrm_urlFazacrm');
delete_option('fazacrm_keyPrivate');
delete_site_option('fazacrm_keyPrivate');

