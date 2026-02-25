<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('provesrc_api_error');
delete_site_transient('provesrc_api_error');
delete_transient('provesrc_success_message');
delete_site_transient('provesrc_success_message');

