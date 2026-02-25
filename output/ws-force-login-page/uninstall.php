<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wsforce-login-active-option');
delete_site_option('wsforce-login-active-option');
delete_option('wsforce-login-message-option');
delete_site_option('wsforce-login-message-option');

