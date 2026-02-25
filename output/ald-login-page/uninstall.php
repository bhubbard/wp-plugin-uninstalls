<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ald_login_page_db_version');
delete_site_option('ald_login_page_db_version');
delete_option('ald_login_page_logo');
delete_site_option('ald_login_page_logo');
delete_option('ald_login_page_logo_width');
delete_site_option('ald_login_page_logo_width');
delete_option('ald_login_page_logo_height');
delete_site_option('ald_login_page_logo_height');
delete_option('ald_login_page_logo_padding');
delete_site_option('ald_login_page_logo_padding');
delete_option('ald_login_page_bgcolor');
delete_site_option('ald_login_page_bgcolor');
delete_option('ald_login_page_fontcolor');
delete_site_option('ald_login_page_fontcolor');

