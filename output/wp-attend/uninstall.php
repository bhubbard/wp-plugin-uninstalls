<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpattend_privacy_policy_url');
delete_site_option('wpattend_privacy_policy_url');

