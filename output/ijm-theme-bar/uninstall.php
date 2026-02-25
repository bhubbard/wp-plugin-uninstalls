<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ijmtb_bg_colour');
delete_site_option('ijmtb_bg_colour');
delete_option('ijmtb_text_colour');
delete_site_option('ijmtb_text_colour');
delete_option('ijmtb_label');
delete_site_option('ijmtb_label');

