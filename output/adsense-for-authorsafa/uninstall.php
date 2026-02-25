<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('afa_option_name');
delete_site_option('afa_option_name');
delete_option('afa_option_name[adposition]');
delete_site_option('afa_option_name[adposition]');
delete_option('afa_option_name[adpub_id]');
delete_site_option('afa_option_name[adpub_id]');

