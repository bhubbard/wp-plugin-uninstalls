<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('playerData');
delete_site_option('playerData');
delete_option('player');
delete_site_option('player');
delete_option('ident');
delete_site_option('ident');
delete_option('key');
delete_site_option('key');

