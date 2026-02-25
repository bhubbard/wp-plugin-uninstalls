<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('WAA_location');
delete_site_option('WAA_location');
delete_option('WAA_partnerID');
delete_site_option('WAA_partnerID');
delete_option('WAA_priceIndicatorPage');
delete_site_option('WAA_priceIndicatorPage');
delete_option('WAA_backgroundColorPage');
delete_site_option('WAA_backgroundColorPage');
delete_option('WAA_borderColorPage');
delete_site_option('WAA_borderColorPage');
delete_option('WAA_textColorPage');
delete_site_option('WAA_textColorPage');
delete_option('WAA_linkColorPage');
delete_site_option('WAA_linkColorPage');
delete_option('WAA_targetPage');
delete_site_option('WAA_targetPage');
delete_option('WAA_imageSizePage');
delete_site_option('WAA_imageSizePage');
delete_option('WAA_priceIndicatorSidebar');
delete_site_option('WAA_priceIndicatorSidebar');
delete_option('WAA_backgroundColorSidebar');
delete_site_option('WAA_backgroundColorSidebar');
delete_option('WAA_borderColorSidebar');
delete_site_option('WAA_borderColorSidebar');
delete_option('WAA_textColorSidebar');
delete_site_option('WAA_textColorSidebar');
delete_option('WAA_linkColorSidebar');
delete_site_option('WAA_linkColorSidebar');
delete_option('WAA_targetSidebar');
delete_site_option('WAA_targetSidebar');
delete_option('WAA_imageSizeSidebar');
delete_site_option('WAA_imageSizeSidebar');
delete_option('WAA_pictureTarget');
delete_site_option('WAA_pictureTarget');
delete_option('WELAmazonAdds_partnerID');
delete_site_option('WELAmazonAdds_partnerID');
delete_option('widget_waa-link');
delete_site_option('widget_waa-link');

