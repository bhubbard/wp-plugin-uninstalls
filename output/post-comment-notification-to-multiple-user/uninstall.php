<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cn_recipients');
delete_site_option('cn_recipients');
delete_option('cn_moderated_only');
delete_site_option('cn_moderated_only');

