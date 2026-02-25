<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('awtb_select_idclass');
delete_site_option('awtb_select_idclass');
delete_option('awtb_class_name');
delete_site_option('awtb_class_name');
delete_option('awtb_id_name');
delete_site_option('awtb_id_name');
delete_option('awtb_chooseclr');
delete_site_option('awtb_chooseclr');
delete_option('message_box');
delete_site_option('message_box');

