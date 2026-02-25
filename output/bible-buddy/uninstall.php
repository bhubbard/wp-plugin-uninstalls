<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('display_card_on_posts');
delete_site_option('display_card_on_posts');
delete_option('display_card_on_pages');
delete_site_option('display_card_on_pages');
delete_option('format');
delete_site_option('format');
delete_option('theme');
delete_site_option('theme');
delete_option('display_credit_link');
delete_site_option('display_credit_link');

