<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mp_basics');
delete_site_option('mp_basics');
delete_option('mp_social');
delete_site_option('mp_social');
delete_option('mp_subscribe');
delete_site_option('mp_subscribe');

