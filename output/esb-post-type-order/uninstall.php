<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('esb_pto_set_option');
delete_site_option('esb_pto_set_option');
delete_option('esb_pto_settings');
delete_site_option('esb_pto_settings');

