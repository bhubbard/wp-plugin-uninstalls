<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dup1');
delete_site_option('dup1');
delete_option('dup2');
delete_site_option('dup2');
delete_option('dup3');
delete_site_option('dup3');
delete_option('dup4');
delete_site_option('dup4');
delete_option('dup5');
delete_site_option('dup5');
delete_option('link');
delete_site_option('link');
delete_option('title');
delete_site_option('title');

