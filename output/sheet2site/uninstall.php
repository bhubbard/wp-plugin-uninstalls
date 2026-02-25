<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sheet2site_terms_accepted');
delete_site_option('sheet2site_terms_accepted');

