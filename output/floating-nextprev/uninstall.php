<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fnextprev_style');
delete_site_option('fnextprev_style');
delete_option('floating_nextprev');
delete_site_option('floating_nextprev');

