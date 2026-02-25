<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cytcm_cytrio_api_success');
delete_site_option('cytcm_cytrio_api_success');

