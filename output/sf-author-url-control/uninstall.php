<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sf_auc_first_message');
delete_site_option('sf_auc_first_message');
delete_option('author_base');
delete_site_option('author_base');

// Delete Transients
delete_transient('settings_errors');
delete_site_transient('settings_errors');

