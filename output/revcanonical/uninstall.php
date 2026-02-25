<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('revcanonical-attributes');
delete_site_option('revcanonical-attributes');
delete_option('revcanonical-url');
delete_site_option('revcanonical-url');

