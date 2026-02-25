<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bcaem_brixy_content_instances');
delete_site_option('bcaem_brixy_content_instances');

