<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('quriobot_path');
delete_site_option('quriobot_path');
delete_option('quriobot_init');
delete_site_option('quriobot_init');
delete_option('quriobot_version');
delete_site_option('quriobot_version');

