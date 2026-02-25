<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aiarticle_log');
delete_site_option('aiarticle_log');
delete_option('aiarticle_tongxun');
delete_site_option('aiarticle_tongxun');
delete_option('aiarticle_tongji');
delete_site_option('aiarticle_tongji');

