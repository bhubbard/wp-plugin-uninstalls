<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('yotm_disabled_sizes');
delete_site_option('yotm_disabled_sizes');
delete_option('yo_disabled_sizes');
delete_site_option('yo_disabled_sizes');

