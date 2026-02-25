<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('yapevents_available_views');
delete_site_option('yapevents_available_views');
delete_option('yapevents_eventColor');
delete_site_option('yapevents_eventColor');
delete_option('yapevents_eventTextColor');
delete_site_option('yapevents_eventTextColor');
delete_option('yapevents_version');
delete_site_option('yapevents_version');
delete_option('yapevents_theme');
delete_site_option('yapevents_theme');
delete_option('yapevents_theme_css');
delete_site_option('yapevents_theme_css');
delete_option('yapevents_limit');
delete_site_option('yapevents_limit');
delete_option('yapevents_limit_txt');
delete_site_option('yapevents_limit_txt');
delete_option('yapevents_qtips');
delete_site_option('yapevents_qtips');
delete_option('yapevents_qtips_style');
delete_site_option('yapevents_qtips_style');
delete_option('yapevents_qtips_my');
delete_site_option('yapevents_qtips_my');
delete_option('yapevents_qtips_at');
delete_site_option('yapevents_qtips_at');
delete_option('yapevents_qtips_rounded');
delete_site_option('yapevents_qtips_rounded');
delete_option('yapevents_qtips_image');
delete_site_option('yapevents_qtips_image');
delete_option('yapevents_timeFormat');
delete_site_option('yapevents_timeFormat');
delete_option('yapevents_defaultView');
delete_site_option('yapevents_defaultView');
delete_option('yapevents_weekends');
delete_site_option('yapevents_weekends');
delete_option('yapevents_qtips_shadow');
delete_site_option('yapevents_qtips_shadow');
delete_option('yapevents_venueShowTooltip');
delete_site_option('yapevents_venueShowTooltip');
delete_option('yapevents_venueShowImages');
delete_site_option('yapevents_venueShowImages');
delete_option('yapevents_venue_id');
delete_site_option('yapevents_venue_id');

