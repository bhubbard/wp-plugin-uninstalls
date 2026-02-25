<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('inqubufo_whatsapp_enable');
delete_site_option('inqubufo_whatsapp_enable');
delete_option('inqubufo_whatsapp_number');
delete_site_option('inqubufo_whatsapp_number');
delete_option('inqubufo_whatsapp_message');
delete_site_option('inqubufo_whatsapp_message');
delete_option('inqubufo_whatsapp_button_text');
delete_site_option('inqubufo_whatsapp_button_text');

