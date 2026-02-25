<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aotm_dismiss_rating_notice');
delete_site_option('aotm_dismiss_rating_notice');

