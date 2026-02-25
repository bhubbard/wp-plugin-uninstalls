<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ceepht-remove');
delete_site_option('ceepht-remove');
delete_option('ceepht-new');
delete_site_option('ceepht-new');
delete_option('ceepht-manhung');
delete_site_option('ceepht-manhung');

