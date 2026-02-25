<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('silenceadminbars');
delete_site_option('silenceadminbars');
delete_option('silenceupgrade');
delete_site_option('silenceupgrade');
delete_option('silenceupdates');
delete_site_option('silenceupdates');

