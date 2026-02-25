<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ujic_set');
delete_site_option('ujic_set');
delete_option('uji-countdown-version');
delete_site_option('uji-countdown-version');

