<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('childpagescard_template');
delete_site_option('childpagescard_template');
delete_option('childpagescard_settings');
delete_site_option('childpagescard_settings');

