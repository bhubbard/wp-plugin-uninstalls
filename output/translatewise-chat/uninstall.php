<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tw-client-key');
delete_site_option('tw-client-key');
delete_option('tw-chat-enabled');
delete_site_option('tw-chat-enabled');
delete_option('tw-height-offset');
delete_site_option('tw-height-offset');
delete_option('tw-hide-popouts');
delete_site_option('tw-hide-popouts');
delete_option('tw-hide-minimized');
delete_site_option('tw-hide-minimized');

