<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wcbs_whatsapp_number');
delete_site_option('wcbs_whatsapp_number');
delete_option('wcbs_message');
delete_site_option('wcbs_message');
delete_option('wcbs_whatsapp_button_class');
delete_site_option('wcbs_whatsapp_button_class');
delete_option('wcbs_button_text');
delete_site_option('wcbs_button_text');

