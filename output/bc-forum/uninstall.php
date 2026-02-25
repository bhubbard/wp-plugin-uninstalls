<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bcforum_label_name');
delete_site_option('bcforum_label_name');
delete_option('answers_table_version');
delete_site_option('answers_table_version');

