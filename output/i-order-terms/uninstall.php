<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('iorderterms.general');
delete_site_option('iorderterms.general');
delete_option('iorderterms_general');
delete_site_option('iorderterms_general');

