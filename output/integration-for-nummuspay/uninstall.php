<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_CHECKOUT_PAGE_ID_FROM_NUMMUSPAY');
delete_site_option('_CHECKOUT_PAGE_ID_FROM_NUMMUSPAY');

