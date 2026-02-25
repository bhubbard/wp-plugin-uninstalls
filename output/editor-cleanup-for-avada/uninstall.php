<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('fdp-avada-notice-succ');
delete_site_transient('fdp-avada-notice-succ');
delete_transient('fdp-avada-notice-fail');
delete_site_transient('fdp-avada-notice-fail');

