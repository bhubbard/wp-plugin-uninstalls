<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ph-postqueue-feeds-url');
delete_site_option('ph-postqueue-feeds-url');

