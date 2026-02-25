<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('code_block_pro_settings');
delete_site_option('code_block_pro_settings');
delete_option('code_block_pro_settings_2');
delete_site_option('code_block_pro_settings_2');

