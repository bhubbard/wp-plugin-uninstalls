<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('amin_chat_button_plugin_enabled');
delete_site_option('amin_chat_button_plugin_enabled');
delete_option('amin_chat_button_plugin_enabled_together');
delete_site_option('amin_chat_button_plugin_enabled_together');
delete_option('amin_chat_button_plugin_phone_en');
delete_site_option('amin_chat_button_plugin_phone_en');
delete_option('amin_chat_button_plugin_phone_tr');
delete_site_option('amin_chat_button_plugin_phone_tr');
delete_option('amin_chat_button_plugin_phone');
delete_site_option('amin_chat_button_plugin_phone');
delete_option('amin_chat_button_plugin_phone_link_en');
delete_site_option('amin_chat_button_plugin_phone_link_en');
delete_option('amin_chat_button_plugin_phone_link_tr');
delete_site_option('amin_chat_button_plugin_phone_link_tr');
delete_option('amin_chat_button_plugin_phone_link');
delete_site_option('amin_chat_button_plugin_phone_link');
delete_option('amin_chat_button_plugin_text');
delete_site_option('amin_chat_button_plugin_text');
delete_option('amin_chat_button_plugin_text_en');
delete_site_option('amin_chat_button_plugin_text_en');
delete_option('amin_chat_button_plugin_text_en_loc');
delete_site_option('amin_chat_button_plugin_text_en_loc');
delete_option('amin_chat_button_plugin_text_tr');
delete_site_option('amin_chat_button_plugin_text_tr');
delete_option('amin_chat_button_plugin_text_tr_loc');
delete_site_option('amin_chat_button_plugin_text_tr_loc');
delete_option('amin_chat_button_plugin_position');
delete_site_option('amin_chat_button_plugin_position');
delete_option('amin_chat_button_tag_select');
delete_site_option('amin_chat_button_tag_select');
delete_option('amin_chat_button_msg_select');
delete_site_option('amin_chat_button_msg_select');
delete_option('amin_chat_button_plugin_target_id');
delete_site_option('amin_chat_button_plugin_target_id');
delete_option('amin_chat_button_plugin_gtag_report');
delete_site_option('amin_chat_button_plugin_gtag_report');
delete_option('amin_chat_button_plugin_yametrik_id');
delete_site_option('amin_chat_button_plugin_yametrik_id');
delete_option('amin_chat_button_plugin_yametrik_account');
delete_site_option('amin_chat_button_plugin_yametrik_account');
delete_option('amin_chat_button_plugin_prohibited_urls');
delete_site_option('amin_chat_button_plugin_prohibited_urls');
delete_option('amin_chat_button_plugin_pulsation');
delete_site_option('amin_chat_button_plugin_pulsation');

