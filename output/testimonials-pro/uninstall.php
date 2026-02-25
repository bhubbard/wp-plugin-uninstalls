<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('TP_TextLength');
delete_site_option('TP_TextLength');
delete_option('TP_category');
delete_site_option('TP_category');
delete_option('TP_MoreText');
delete_site_option('TP_MoreText');
delete_option('TP_MoreLink');
delete_site_option('TP_MoreLink');
delete_option('TP_name');
delete_site_option('TP_name');

