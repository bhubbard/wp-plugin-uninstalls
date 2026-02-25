<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pce_wechat_username');
delete_site_option('pce_wechat_username');
delete_option('pce_tip_text');
delete_site_option('pce_tip_text');

