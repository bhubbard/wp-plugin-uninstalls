<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bolt_news_enable');
delete_site_option('bolt_news_enable');
delete_option('bolt_news_label');
delete_site_option('bolt_news_label');
delete_option('bolt_news_data');
delete_site_option('bolt_news_data');
delete_option('bolt_news_titolo');
delete_site_option('bolt_news_titolo');
delete_option('bolt_news_testo');
delete_site_option('bolt_news_testo');

