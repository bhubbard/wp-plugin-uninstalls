<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('smartcb_banner_title');
delete_site_option('smartcb_banner_title');
delete_option('smartcb_banner_desc');
delete_site_option('smartcb_banner_desc');
delete_option('smartcb_banner_accept_btn');
delete_site_option('smartcb_banner_accept_btn');
delete_option('smartcb_banner_decline_btn');
delete_site_option('smartcb_banner_decline_btn');

