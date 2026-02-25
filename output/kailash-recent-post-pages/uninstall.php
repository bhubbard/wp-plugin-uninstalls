<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('krpp_posts_per_page');
delete_site_option('krpp_posts_per_page');
delete_option('krpp_columns');
delete_site_option('krpp_columns');
delete_option('krpp_show_image');
delete_site_option('krpp_show_image');
delete_option('krpp_show_readmore');
delete_site_option('krpp_show_readmore');
delete_option('krpp_readmore_text');
delete_site_option('krpp_readmore_text');
delete_option('krpp_auto_display_location');
delete_site_option('krpp_auto_display_location');
delete_option('krpp_auto_display_margin');
delete_site_option('krpp_auto_display_margin');
delete_option('krpp_auto_display_bgcolor');
delete_site_option('krpp_auto_display_bgcolor');
delete_option('krpp_auto_display_padding');
delete_site_option('krpp_auto_display_padding');

