<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('blast_options');
delete_site_option('blast_options');
delete_option('blast_messages');
delete_site_option('blast_messages');

