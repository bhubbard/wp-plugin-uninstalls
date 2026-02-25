<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('msjli_service_number');
delete_site_option('msjli_service_number');
delete_option('msjli_widget_color');
delete_site_option('msjli_widget_color');
delete_option('msjli_widget_location');
delete_site_option('msjli_widget_location');
delete_option('msjli_widget_show_widget');
delete_site_option('msjli_widget_show_widget');
delete_option('msjli_massejli_live_chat');
delete_site_option('msjli_massejli_live_chat');
delete_option('msjli_massejli_chats_with_us');
delete_site_option('msjli_massejli_chats_with_us');
delete_option('msjli_massejli_support_agent');
delete_site_option('msjli_massejli_support_agent');
delete_option('msjli_massejli_how_ican_help_you');
delete_site_option('msjli_massejli_how_ican_help_you');
delete_option('msjli_massejli_widget_send');
delete_site_option('msjli_massejli_widget_send');
delete_option('msjli_massejli_widget_close');
delete_site_option('msjli_massejli_widget_close');
delete_option('msjli_widget_type_message');
delete_site_option('msjli_widget_type_message');
delete_option('msjli_widget_write_your_message_first');
delete_site_option('msjli_widget_write_your_message_first');
delete_option('massejli_wa_options');
delete_site_option('massejli_wa_options');
delete_option('msjli_widget_options');
delete_site_option('msjli_widget_options');

