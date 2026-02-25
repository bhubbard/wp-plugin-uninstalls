<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('simply_disable_comments_enable_comments');
delete_site_option('simply_disable_comments_enable_comments');

