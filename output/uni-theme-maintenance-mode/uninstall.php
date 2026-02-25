<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('unitheme_maintenance_mode_style');
delete_site_option('unitheme_maintenance_mode_style');
delete_option('unitheme_maintenance_mode_rss_link');
delete_site_option('unitheme_maintenance_mode_rss_link');
delete_option('unitheme_maintenance_mode_fb_link');
delete_site_option('unitheme_maintenance_mode_fb_link');
delete_option('unitheme_maintenance_mode_twi_link');
delete_site_option('unitheme_maintenance_mode_twi_link');
delete_option('unitheme_maintenance_mode_vk_link');
delete_site_option('unitheme_maintenance_mode_vk_link');
delete_option('unitheme_maintenance_mode_picasa_link');
delete_site_option('unitheme_maintenance_mode_picasa_link');
delete_option('unitheme_maintenance_mode_orkut_link');
delete_site_option('unitheme_maintenance_mode_orkut_link');
delete_option('unitheme_maintenance_mode_li_link');
delete_site_option('unitheme_maintenance_mode_li_link');
delete_option('unitheme_maintenance_mode_blogger_link');
delete_site_option('unitheme_maintenance_mode_blogger_link');
delete_option('unitheme_maintenance_mode_flickr_link');
delete_site_option('unitheme_maintenance_mode_flickr_link');
delete_option('unitheme_maintenance_mode_title_text');
delete_site_option('unitheme_maintenance_mode_title_text');
delete_option('unitheme_maintenance_mode_general_text');
delete_site_option('unitheme_maintenance_mode_general_text');
delete_option('unitheme_maintenance_mode_mailchimp_api');
delete_site_option('unitheme_maintenance_mode_mailchimp_api');
delete_option('unitheme_maintenance_mode_mailchimp_list');
delete_site_option('unitheme_maintenance_mode_mailchimp_list');
delete_option('unitheme_maintenance_mode_logo');
delete_site_option('unitheme_maintenance_mode_logo');
delete_option('unitheme_maintenance_mode_footer_text');
delete_site_option('unitheme_maintenance_mode_footer_text');
delete_option('unitheme_maintenance_mode_enabled');
delete_site_option('unitheme_maintenance_mode_enabled');

