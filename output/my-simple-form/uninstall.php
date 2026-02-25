<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('plance_msf_rows');
delete_site_option('plance_msf_rows');
delete_option('plance_msf_notification');
delete_site_option('plance_msf_notification');

