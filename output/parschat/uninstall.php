<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('parschat_token');
delete_site_option('parschat_token');

// Delete Transients
delete_transient('parschat_error');
delete_site_transient('parschat_error');
delete_transient('parschat_success');
delete_site_transient('parschat_success');

