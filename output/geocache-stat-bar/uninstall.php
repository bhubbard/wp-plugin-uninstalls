<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gcstb_delete_db');
delete_site_option('gcstb_delete_db');
delete_option('gcstb_delete_db_confirm');
delete_site_option('gcstb_delete_db_confirm');
delete_option('gcstb_answer_type');
delete_site_option('gcstb_answer_type');

