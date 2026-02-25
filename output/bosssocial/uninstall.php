<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('boss_social_facebook');
delete_site_option('boss_social_facebook');
delete_option('boss_social_twitter');
delete_site_option('boss_social_twitter');
delete_option('boss_social_google');
delete_site_option('boss_social_google');
delete_option('boss_social_blogger');
delete_site_option('boss_social_blogger');
delete_option('boss_social_tumblr');
delete_site_option('boss_social_tumblr');
delete_option('boss_social_wordpress');
delete_site_option('boss_social_wordpress');
delete_option('boss_social_behance');
delete_site_option('boss_social_behance');
delete_option('boss_social_pinterest');
delete_site_option('boss_social_pinterest');
delete_option('boss_social_stumbleupon');
delete_site_option('boss_social_stumbleupon');
delete_option('boss_social_digg');
delete_site_option('boss_social_digg');
delete_option('boss_social_delicious');
delete_site_option('boss_social_delicious');
delete_option('boss_social_deviantart');
delete_site_option('boss_social_deviantart');
delete_option('boss_social_linkedin');
delete_site_option('boss_social_linkedin');
delete_option('boss_social_skype');
delete_site_option('boss_social_skype');
delete_option('boss_social_flickr');
delete_site_option('boss_social_flickr');
delete_option('boss_social_picasa');
delete_site_option('boss_social_picasa');
delete_option('boss_social_instagram');
delete_site_option('boss_social_instagram');
delete_option('boss_social_dribbble');
delete_site_option('boss_social_dribbble');
delete_option('boss_social_forrst');
delete_site_option('boss_social_forrst');
delete_option('boss_social_lastfm');
delete_site_option('boss_social_lastfm');
delete_option('boss_social_soundcloud');
delete_site_option('boss_social_soundcloud');
delete_option('boss_social_myspace');
delete_site_option('boss_social_myspace');
delete_option('boss_social_vimeo');
delete_site_option('boss_social_vimeo');
delete_option('boss_social_youtube');
delete_site_option('boss_social_youtube');
delete_option('boss_social_paypal');
delete_site_option('boss_social_paypal');
delete_option('boss_social_rss');
delete_site_option('boss_social_rss');
delete_option('boss_social_open_links');
delete_site_option('boss_social_open_links');

