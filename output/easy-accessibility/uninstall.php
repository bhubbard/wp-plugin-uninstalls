<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('eacs_icon_type');
delete_site_option('eacs_icon_type');
delete_option('eacs_icon_pos');
delete_site_option('eacs_icon_pos');
delete_option('eacs_icon_color');
delete_site_option('eacs_icon_color');
delete_option('eacs_icon_bg_color');
delete_site_option('eacs_icon_bg_color');
delete_option('eacs_icon_hcolor');
delete_site_option('eacs_icon_hcolor');
delete_option('eacs_icon_hbgcolor');
delete_site_option('eacs_icon_hbgcolor');
delete_option('eacs_toolbox_heading');
delete_site_option('eacs_toolbox_heading');
delete_option('eacs_toolbar_color');
delete_site_option('eacs_toolbar_color');
delete_option('eacs_toolbar_bg_color');
delete_site_option('eacs_toolbar_bg_color');
delete_option('eacs_titem_color');
delete_site_option('eacs_titem_color');
delete_option('eacs_titem_bg_color');
delete_site_option('eacs_titem_bg_color');
delete_option('eacs_titem_hcolor');
delete_site_option('eacs_titem_hcolor');
delete_option('eacs_titem_hbgcolor');
delete_site_option('eacs_titem_hbgcolor');
delete_option('eacs_ticon_color');
delete_site_option('eacs_ticon_color');

