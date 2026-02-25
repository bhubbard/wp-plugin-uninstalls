<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('customfield1');
delete_site_option('customfield1');
delete_option('customfield2');
delete_site_option('customfield2');
delete_option('customfield3');
delete_site_option('customfield3');
delete_option('customfield4');
delete_site_option('customfield4');
delete_option('customfield5');
delete_site_option('customfield5');
delete_option('tagname1');
delete_site_option('tagname1');
delete_option('tagname2');
delete_site_option('tagname2');
delete_option('tagname3');
delete_site_option('tagname3');
delete_option('tagname4');
delete_site_option('tagname4');
delete_option('tagname5');
delete_site_option('tagname5');
delete_option('tagname6');
delete_site_option('tagname6');
delete_option('tagname7');
delete_site_option('tagname7');
delete_option('tagname8');
delete_site_option('tagname8');
delete_option('numberposts');
delete_site_option('numberposts');
delete_option('categoryname');
delete_site_option('categoryname');
delete_option('checkbox1');
delete_site_option('checkbox1');
delete_option('checkbox2');
delete_site_option('checkbox2');
delete_option('checkbox3');
delete_site_option('checkbox3');

