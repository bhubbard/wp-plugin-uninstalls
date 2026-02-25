<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hetjens_registered_only_active');
delete_site_option('hetjens_registered_only_active');
delete_option('hetjens_registered_only_feed');
delete_site_option('hetjens_registered_only_feed');

