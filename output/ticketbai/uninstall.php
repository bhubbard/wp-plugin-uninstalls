<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ticketbai_dot_li_content_settings');
delete_site_option('ticketbai_dot_li_content_settings');

