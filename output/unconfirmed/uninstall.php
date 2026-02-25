<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('unconfirmed_resent_counts');
delete_site_option('unconfirmed_resent_counts');

