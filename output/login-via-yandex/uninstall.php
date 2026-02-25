<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lviyid_redirect_on_activation');
delete_site_option('lviyid_redirect_on_activation');

