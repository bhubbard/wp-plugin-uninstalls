<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('saltrc');
delete_site_option('saltrc');
delete_option('iprc');
delete_site_option('iprc');
delete_option('portrc');
delete_site_option('portrc');
delete_option('userrc');
delete_site_option('userrc');
delete_option('pwdrc');
delete_site_option('pwdrc');

