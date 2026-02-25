<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('TBMB_FREE_KEY');
delete_site_option('TBMB_FREE_KEY');
delete_option('TBIWP_FREE_KEY');
delete_site_option('TBIWP_FREE_KEY');

