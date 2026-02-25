<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('iwg_fast_tagging_dis_auto_sug');
delete_site_option('iwg_fast_tagging_dis_auto_sug');

