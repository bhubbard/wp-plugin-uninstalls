<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tseoportfolio_gallery_title');
delete_site_option('tseoportfolio_gallery_title');
delete_option('tseoportfolio_gallery_title_color');
delete_site_option('tseoportfolio_gallery_title_color');
delete_option('tseoportfolio_gallery_color');
delete_site_option('tseoportfolio_gallery_color');
delete_option('tseoportfolio_card_color');
delete_site_option('tseoportfolio_card_color');
delete_option('tseoportfolio_card_border_color');
delete_site_option('tseoportfolio_card_border_color');
delete_option('tseoportfolio_card_title_color');
delete_site_option('tseoportfolio_card_title_color');
delete_option('tseoportfolio_card_desc_color');
delete_site_option('tseoportfolio_card_desc_color');
delete_option('tseoportfolio_card_footer_bgcolor');
delete_site_option('tseoportfolio_card_footer_bgcolor');
delete_option('tseoportfolio_btn_bgcolor');
delete_site_option('tseoportfolio_btn_bgcolor');
delete_option('tseoportfolio_btn_textcolor');
delete_site_option('tseoportfolio_btn_textcolor');
delete_option('tseoportfolio_btn_hover_bgcolor');
delete_site_option('tseoportfolio_btn_hover_bgcolor');
delete_option('tseoportfolio_btn_hover_textcolor');
delete_site_option('tseoportfolio_btn_hover_textcolor');
delete_option('tseoportfolio_btn_visited_color');
delete_site_option('tseoportfolio_btn_visited_color');
delete_option('tseoportfolio_delete_data');
delete_site_option('tseoportfolio_delete_data');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_tseoportfolio_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_tseoportfolio_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_tseoportfolio_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_tseoportfolio_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_tseoportfolio_web_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_tseoportfolio_web_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_tseoportfolio_web_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_tseoportfolio_web_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_tseoportfolio_pagespeed_mobile_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_tseoportfolio_pagespeed_mobile_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_tseoportfolio_pagespeed_mobile_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_tseoportfolio_pagespeed_mobile_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_tseoportfolio_pagespeed_desktop_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_tseoportfolio_pagespeed_desktop_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_tseoportfolio_pagespeed_desktop_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_tseoportfolio_pagespeed_desktop_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_tseoportfolio_web_link_pingdom' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_tseoportfolio_web_link_pingdom' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_tseoportfolio_web_link_pingdom' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_tseoportfolio_web_link_pingdom' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_tseoportfolio_web_link_gtmetrix' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_tseoportfolio_web_link_gtmetrix' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_tseoportfolio_web_link_gtmetrix' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_tseoportfolio_web_link_gtmetrix' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_tseoportfolio_web_link_richresults' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_tseoportfolio_web_link_richresults' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_tseoportfolio_web_link_richresults' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_tseoportfolio_web_link_richresults' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_tseoportfolio_order' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_tseoportfolio_order' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_tseoportfolio_order' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_tseoportfolio_order' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_tseoportfolio_display_in_grid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_tseoportfolio_display_in_grid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_tseoportfolio_display_in_grid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_tseoportfolio_display_in_grid' ) );

