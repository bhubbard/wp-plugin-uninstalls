<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kktt-animated-bar');
delete_site_option('kktt-animated-bar');
delete_option('kktt-bar-head');
delete_site_option('kktt-bar-head');
delete_option('kktt-back-color');
delete_site_option('kktt-back-color');
delete_option('kktt-font-color');
delete_site_option('kktt-font-color');
delete_option('kktt-transp');
delete_site_option('kktt-transp');

