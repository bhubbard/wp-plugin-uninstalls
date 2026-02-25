<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('flytedesk-digital-option_publisher_uuid');
delete_site_option('flytedesk-digital-option_publisher_uuid');

