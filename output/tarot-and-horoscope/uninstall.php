<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tarotxhoroscope_chatbox_settings');
delete_site_option('tarotxhoroscope_chatbox_settings');
delete_option('tarotxhoroscope_daily_tarot_settings');
delete_site_option('tarotxhoroscope_daily_tarot_settings');
delete_option('tarotxhoroscope_aries_attachment_id');
delete_site_option('tarotxhoroscope_aries_attachment_id');
delete_option('tarotxhoroscope_horoscope_settings');
delete_site_option('tarotxhoroscope_horoscope_settings');
delete_option('tarotxhoroscope_one_card_settings');
delete_site_option('tarotxhoroscope_one_card_settings');
delete_option('tarotxhoroscope_three_card_settings');
delete_site_option('tarotxhoroscope_three_card_settings');
delete_option('tarotxhoroscope_api_key');
delete_site_option('tarotxhoroscope_api_key');
delete_option('tarotxhoroscope_domain');
delete_site_option('tarotxhoroscope_domain');
delete_option('tarotxhoroscope_remove_data_on_uninstall');
delete_site_option('tarotxhoroscope_remove_data_on_uninstall');

// Delete Transients
delete_transient('tarotxhoroscope_redirect_to_settings');
delete_site_transient('tarotxhoroscope_redirect_to_settings');

