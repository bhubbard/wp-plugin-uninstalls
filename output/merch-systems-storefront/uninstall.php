<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('merchsys_addmenu');
delete_site_option('merchsys_addmenu');
delete_option('merchsys_showcategories');
delete_site_option('merchsys_showcategories');
delete_option('merchsys_showshopcarousel');
delete_site_option('merchsys_showshopcarousel');
delete_option('merchsys_showloginmenu');
delete_site_option('merchsys_showloginmenu');
delete_option('merchsys_loginmenuwrapper');
delete_site_option('merchsys_loginmenuwrapper');
delete_option('merchsys_basketmenuwrapper');
delete_site_option('merchsys_basketmenuwrapper');
delete_option('merchsys_maxamount');
delete_site_option('merchsys_maxamount');
delete_option('merchsys_gobasket');
delete_site_option('merchsys_gobasket');
delete_option('merchsys_navigationname');
delete_site_option('merchsys_navigationname');

