<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('genki_feedburner_sitestats_id');
delete_site_option('genki_feedburner_sitestats_id');

