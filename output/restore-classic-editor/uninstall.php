<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('reenable-gutenberg');
delete_site_option('reenable-gutenberg');
delete_option('rm_notices');
delete_site_option('rm_notices');

