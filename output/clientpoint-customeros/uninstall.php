<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('openDefaultDesktop');
delete_site_option('openDefaultDesktop');
delete_option('showCPIcon');
delete_site_option('showCPIcon');
delete_option('delayDuration');
delete_site_option('delayDuration');

