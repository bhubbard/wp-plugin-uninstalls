<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('show_in_pages');
delete_site_option('show_in_pages');
delete_option('show_twitter');
delete_site_option('show_twitter');
delete_option('twitter_label');
delete_site_option('twitter_label');
delete_option('twitter_acc');
delete_site_option('twitter_acc');
delete_option('show_facebook');
delete_site_option('show_facebook');
delete_option('facebook_label');
delete_site_option('facebook_label');
delete_option('show_linkedin');
delete_site_option('show_linkedin');
delete_option('linkedin_label');
delete_site_option('linkedin_label');
delete_option('show_reddit');
delete_site_option('show_reddit');
delete_option('reddit_label');
delete_site_option('reddit_label');
delete_option('show_vk');
delete_site_option('show_vk');
delete_option('vk_label');
delete_site_option('vk_label');
delete_option('show_telegram');
delete_site_option('show_telegram');
delete_option('telegram_label');
delete_site_option('telegram_label');
delete_option('telegram_datatext');
delete_site_option('telegram_datatext');
delete_option('show_ok');
delete_site_option('show_ok');
delete_option('ok_label');
delete_site_option('ok_label');
delete_option('show_whatsapp');
delete_site_option('show_whatsapp');
delete_option('whatsapp_label');
delete_site_option('whatsapp_label');
delete_option('show_viber');
delete_site_option('show_viber');
delete_option('viber_label');
delete_site_option('viber_label');
delete_option('viber_datacomment');
delete_site_option('viber_datacomment');
delete_option('show_pinterest');
delete_site_option('show_pinterest');
delete_option('pinterest_label');
delete_site_option('pinterest_label');
delete_option('light_theme');
delete_site_option('light_theme');
delete_option('buttons_size');
delete_site_option('buttons_size');
delete_option('linkedit_label');
delete_site_option('linkedit_label');

