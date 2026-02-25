<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('abx_cstyn');
delete_site_option('abx_cstyn');
delete_option('abx_cstms');
delete_site_option('abx_cstms');

