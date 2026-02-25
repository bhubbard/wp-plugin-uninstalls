<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('scrollhighlight_selector');
delete_site_option('scrollhighlight_selector');
delete_option('scrollhighlight_el_color');
delete_site_option('scrollhighlight_el_color');
delete_option('scrollhighlight_color');
delete_site_option('scrollhighlight_color');
delete_option('scrollhighlight_opacity');
delete_site_option('scrollhighlight_opacity');
delete_option('scrollhighlight_offset_type');
delete_site_option('scrollhighlight_offset_type');
delete_option('scrollhighlight_offset');
delete_site_option('scrollhighlight_offset');

