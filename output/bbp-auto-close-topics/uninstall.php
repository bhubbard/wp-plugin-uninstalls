<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_tba_bbp_auto_close_topics');
delete_site_option('_tba_bbp_auto_close_topics');
delete_option('_tba_bbp_auto_close_age');
delete_site_option('_tba_bbp_auto_close_age');

