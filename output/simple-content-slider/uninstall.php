<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('scontentslider_posttype');
delete_site_option('scontentslider_posttype');
delete_option('scontentslider_svn');
delete_site_option('scontentslider_svn');
delete_option('scontentslider_menutitle');
delete_site_option('scontentslider_menutitle');
delete_option('scontentslider_max_H');
delete_site_option('scontentslider_max_H');
delete_option('scontentslider_max_W');
delete_site_option('scontentslider_max_W');
delete_option('scontentslider_html5');
delete_site_option('scontentslider_html5');
delete_option('scontentslider_effect');
delete_site_option('scontentslider_effect');
delete_option('scontentslider_autoplay');
delete_site_option('scontentslider_autoplay');
delete_option('scontentslider_interval');
delete_site_option('scontentslider_interval');
delete_option('scontentslider_navoutside');
delete_site_option('scontentslider_navoutside');
delete_option('scontentslider_css');
delete_site_option('scontentslider_css');
delete_option('scontentslider_navigation');
delete_site_option('scontentslider_navigation');
delete_option('scontentslider_pagination');
delete_site_option('scontentslider_pagination');

