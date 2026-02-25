<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gbvc_visibility_control_for_masterstudy');
delete_site_option('gbvc_visibility_control_for_masterstudy');

