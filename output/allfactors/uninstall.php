<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('allfactors_hostname');
delete_site_option('allfactors_hostname');

// Delete Transients
delete_transient('allfactors_script');
delete_site_transient('allfactors_script');
delete_transient('allfactors_update');
delete_site_transient('allfactors_update');

