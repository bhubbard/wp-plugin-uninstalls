<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ims_siteid');
delete_site_option('ims_siteid');
delete_option('ims_imageid');
delete_site_option('ims_imageid');
delete_option('ims_popup');
delete_site_option('ims_popup');
delete_option('ims_popuptime');
delete_site_option('ims_popuptime');
delete_option('ims_popupimage');
delete_site_option('ims_popupimage');
delete_option('ims_popupbutton');
delete_site_option('ims_popupbutton');
delete_option('ims_popupheight');
delete_site_option('ims_popupheight');
delete_option('ims_popupwidth');
delete_site_option('ims_popupwidth');
delete_option('ims_popuptop');
delete_site_option('ims_popuptop');
delete_option('ims_popupleft');
delete_site_option('ims_popupleft');
delete_option('ims_uploaded');
delete_site_option('ims_uploaded');
delete_option('ims_position');
delete_site_option('ims_position');
delete_option('ims_username');
delete_site_option('ims_username');
delete_option('ims_password');
delete_site_option('ims_password');
delete_option('ims_leftcss');
delete_site_option('ims_leftcss');
delete_option('ims_topcss');
delete_site_option('ims_topcss');
delete_option('ims_fixed');
delete_site_option('ims_fixed');

