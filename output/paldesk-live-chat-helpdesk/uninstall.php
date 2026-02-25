<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('paldesk-api-key-chat');
delete_site_option('paldesk-api-key-chat');
delete_option('paldesk-api-key-notification');
delete_site_option('paldesk-api-key-notification');
delete_option('paldesk-api-key-feedback');
delete_site_option('paldesk-api-key-feedback');

