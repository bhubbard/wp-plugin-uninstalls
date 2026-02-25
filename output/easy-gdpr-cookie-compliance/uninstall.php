<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('NEW_EasyGDPR_text');
delete_site_option('NEW_EasyGDPR_text');
delete_option('NEW_EasyGDPR_button_text');
delete_site_option('NEW_EasyGDPR_button_text');

