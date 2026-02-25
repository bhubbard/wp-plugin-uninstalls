<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('reme_behance');
delete_site_option('reme_behance');
delete_option('reme_facebook');
delete_site_option('reme_facebook');
delete_option('reme_github');
delete_site_option('reme_github');
delete_option('reme_google');
delete_site_option('reme_google');
delete_option('reme_instagram');
delete_site_option('reme_instagram');
delete_option('reme_linkedin');
delete_site_option('reme_linkedin');
delete_option('reme_reddit');
delete_site_option('reme_reddit');
delete_option('reme_snapchat');
delete_site_option('reme_snapchat');
delete_option('reme_tripadvisor');
delete_site_option('reme_tripadvisor');
delete_option('reme_twitter');
delete_site_option('reme_twitter');
delete_option('reme_vk');
delete_site_option('reme_vk');
delete_option('reme_youtube');
delete_site_option('reme_youtube');
delete_option('reme_email');
delete_site_option('reme_email');
delete_option('reme_fax');
delete_site_option('reme_fax');
delete_option('reme_mobile');
delete_site_option('reme_mobile');
delete_option('reme_phone');
delete_site_option('reme_phone');
delete_option('reme_skype');
delete_site_option('reme_skype');
delete_option('reme_website');
delete_site_option('reme_website');
delete_option('reme_country');
delete_site_option('reme_country');
delete_option('reme_state');
delete_site_option('reme_state');
delete_option('reme_county');
delete_site_option('reme_county');
delete_option('reme_city');
delete_site_option('reme_city');
delete_option('reme_street');
delete_site_option('reme_street');
delete_option('reme_zip');
delete_site_option('reme_zip');

