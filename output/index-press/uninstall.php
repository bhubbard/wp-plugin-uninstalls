<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('index-press-words');
delete_site_option('index-press-words');
delete_option('index-press-total');
delete_site_option('index-press-total');

