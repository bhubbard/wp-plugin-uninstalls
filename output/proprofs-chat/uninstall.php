<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ppct_register_site');
delete_site_option('ppct_register_site');
delete_option('ppct_chat_active');
delete_site_option('ppct_chat_active');
delete_option('ppct_reg_email');
delete_site_option('ppct_reg_email');
delete_option('ppct_private_key');
delete_site_option('ppct_private_key');

