<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('emailtools');
delete_site_option('emailtools');

// Delete Transients
delete_transient('emt_terms_and_conditions');
delete_site_transient('emt_terms_and_conditions');
delete_transient('required_wc');
delete_site_transient('required_wc');
delete_transient('emt_required_wc');
delete_site_transient('emt_required_wc');

