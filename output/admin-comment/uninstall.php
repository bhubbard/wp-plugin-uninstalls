<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('PF_COMMENTS_OK');
delete_site_option('PF_COMMENTS_OK');
delete_option('PF_COMMENTS_COLOR');
delete_site_option('PF_COMMENTS_COLOR');

