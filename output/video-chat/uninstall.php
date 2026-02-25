<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('roomName');
delete_site_option('roomName');
delete_option('camambaChatBgImg');
delete_site_option('camambaChatBgImg');
delete_option('camambaChatBg');
delete_site_option('camambaChatBg');
delete_option('camambaFontColor');
delete_site_option('camambaFontColor');
delete_option('camambaCamBg');
delete_site_option('camambaCamBg');
delete_option('camambaLogoImg');
delete_site_option('camambaLogoImg');
delete_option('camambaPowered');
delete_site_option('camambaPowered');

