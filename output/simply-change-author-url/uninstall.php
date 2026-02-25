<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');

// Delete Transients
delete_transient('simply_change_author_url_changed');
delete_site_transient('simply_change_author_url_changed');
delete_transient('add_simply_change_author_url_rules');
delete_site_transient('add_simply_change_author_url_rules');

