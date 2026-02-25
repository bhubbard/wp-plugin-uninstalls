<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wcj_crowdfunding_enabled');
delete_site_option('wcj_crowdfunding_enabled');

