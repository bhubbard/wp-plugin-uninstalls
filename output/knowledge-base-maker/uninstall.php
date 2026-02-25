<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ykb_redirect');
delete_site_option('ykb_redirect');
delete_option('ykb_save_config');
delete_site_option('ykb_save_config');

