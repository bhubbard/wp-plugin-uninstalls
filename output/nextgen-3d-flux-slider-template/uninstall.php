<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ng_3dfluxslider_transitions');
delete_site_option('ng_3dfluxslider_transitions');
delete_option('ng_3dfluxslider_caption');
delete_site_option('ng_3dfluxslider_caption');
delete_option('ng_3dfluxslider_controls');
delete_site_option('ng_3dfluxslider_controls');
delete_option('ng_3dfluxslider_pagination');
delete_site_option('ng_3dfluxslider_pagination');
delete_option('ng_3dfluxslider_delay');
delete_site_option('ng_3dfluxslider_delay');
delete_option('ng_3dfluxslider_image_width');
delete_site_option('ng_3dfluxslider_image_width');

