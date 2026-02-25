<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_bbp_livesearch_beforehtml');
delete_site_option('_bbp_livesearch_beforehtml');
delete_option('_bbp_livesearch_afterhtml');
delete_site_option('_bbp_livesearch_afterhtml');

