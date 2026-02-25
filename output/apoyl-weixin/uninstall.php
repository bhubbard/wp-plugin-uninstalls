<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('apoyl-weixin-settings');
delete_site_option('apoyl-weixin-settings');
delete_option('apoyl_weixin_db_version');
delete_site_option('apoyl_weixin_db_version');

