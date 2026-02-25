<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sendgrid_can_manage_subsite');
delete_site_option('sendgrid_can_manage_subsite');

