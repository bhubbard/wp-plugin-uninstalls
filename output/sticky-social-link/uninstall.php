<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sticky-slink-fb');
delete_site_option('sticky-slink-fb');
delete_option('sticky-slink-twitter');
delete_site_option('sticky-slink-twitter');
delete_option('sticky-slink-insta');
delete_site_option('sticky-slink-insta');
delete_option('sticky-slink-linkedin');
delete_site_option('sticky-slink-linkedin');
delete_option('sticky-slink-youtube');
delete_site_option('sticky-slink-youtube');
delete_option('sticky-slink-behance');
delete_site_option('sticky-slink-behance');
delete_option('sticky-slink-pinterest');
delete_site_option('sticky-slink-pinterest');
delete_option('sticky-slink-tiktok');
delete_site_option('sticky-slink-tiktok');
delete_option('sticky-slink-whatsapp');
delete_site_option('sticky-slink-whatsapp');
delete_option('sticky-slink-messenger');
delete_site_option('sticky-slink-messenger');
delete_option('sticky-slink-telegram');
delete_site_option('sticky-slink-telegram');
delete_option('sticky-slink-wechat');
delete_site_option('sticky-slink-wechat');
delete_option('sticky-slink-viber');
delete_site_option('sticky-slink-viber');
delete_option('sticky-slinkeemail');
delete_site_option('sticky-slinkeemail');
delete_option('sticky-slink-dribbble');
delete_site_option('sticky-slink-dribbble');
delete_option('sticky-slink-reddit');
delete_site_option('sticky-slink-reddit');
delete_option('sticky-slink-snapchat');
delete_site_option('sticky-slink-snapchat');
delete_option('sticky-slink-medium');
delete_site_option('sticky-slink-medium');
delete_option('sticky-slink-quora');
delete_site_option('sticky-slink-quora');
delete_option('sticky-slink-tumblr');
delete_site_option('sticky-slink-tumblr');
delete_option('sslink-position');
delete_site_option('sslink-position');
delete_option('sslink-menubgcolor');
delete_site_option('sslink-menubgcolor');
delete_option('sslink-iconbgcolor');
delete_site_option('sslink-iconbgcolor');
delete_option('sslink-iconhovercolor');
delete_site_option('sslink-iconhovercolor');
delete_option('sslink-roundcorner');
delete_site_option('sslink-roundcorner');
delete_option('sslink_plugin_do_activate');
delete_site_option('sslink_plugin_do_activate');

