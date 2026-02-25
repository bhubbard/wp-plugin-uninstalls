<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('easy_ad_below_title');
delete_site_option('easy_ad_below_title');
delete_option('easy_ad_below_content');
delete_site_option('easy_ad_below_content');
delete_option('easy_ad_inbetween');
delete_site_option('easy_ad_inbetween');
delete_option('easy_ad_paragraph_position');
delete_site_option('easy_ad_paragraph_position');
delete_option('easy_ad_above_header');
delete_site_option('easy_ad_above_header');
delete_option('easy_ad_below_footer');
delete_site_option('easy_ad_below_footer');

