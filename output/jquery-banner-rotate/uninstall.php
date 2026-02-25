<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jbr_hash_key');
delete_site_option('jbr_hash_key');
delete_option('jbr_active_notices');
delete_site_option('jbr_active_notices');

