<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gbm_disabled_blocks');
delete_site_option('gbm_disabled_blocks');
delete_option('gbm_categories');
delete_site_option('gbm_categories');
delete_option('gbm_disabled_patterns');
delete_site_option('gbm_disabled_patterns');

