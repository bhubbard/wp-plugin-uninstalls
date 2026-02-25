<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpsp_lcseo_businesstype');
delete_site_option('wpsp_lcseo_businesstype');
delete_option('wpsp_lbs_name');
delete_site_option('wpsp_lbs_name');
delete_option('wpsp_lbs_straddress');
delete_site_option('wpsp_lbs_straddress');
delete_option('wpsp_lbs_city');
delete_site_option('wpsp_lbs_city');
delete_option('wpsp_lbs_state');
delete_site_option('wpsp_lbs_state');
delete_option('wpsp_lbs_addresscountry');
delete_site_option('wpsp_lbs_addresscountry');
delete_option('wpsp_lbs_postal');
delete_site_option('wpsp_lbs_postal');
delete_option('wpsp_lbs_image');
delete_site_option('wpsp_lbs_image');
delete_option('wpsp_lbs_phone');
delete_site_option('wpsp_lbs_phone');
delete_option('wpsp_lbs_url');
delete_site_option('wpsp_lbs_url');
delete_option('wpsp_lbs_map');
delete_site_option('wpsp_lbs_map');
delete_option('wpsp_lcseo_pricerange1');
delete_site_option('wpsp_lcseo_pricerange1');
delete_option('wpsp_lcseo_pricerange');
delete_site_option('wpsp_lcseo_pricerange');
delete_option('wpsp_lbs_active');
delete_site_option('wpsp_lbs_active');
delete_option('wpsp_lcseo_geo');
delete_site_option('wpsp_lcseo_geo');
delete_option('wpsp_lcseo_lat');
delete_site_option('wpsp_lcseo_lat');
delete_option('wpsp_lcseo_lon');
delete_site_option('wpsp_lcseo_lon');
delete_option('pro_version_notification_jsonld_dismissed_until');
delete_site_option('pro_version_notification_jsonld_dismissed_until');

