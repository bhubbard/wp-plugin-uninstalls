<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tctty_setting');
delete_site_option('tctty_setting');
delete_option('tctty_tr_code');
delete_site_option('tctty_tr_code');

