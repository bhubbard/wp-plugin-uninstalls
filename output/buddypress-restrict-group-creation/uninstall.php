<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('etivite_bp_restrictgroups');
delete_site_option('etivite_bp_restrictgroups');

