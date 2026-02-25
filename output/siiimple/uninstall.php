<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('iii_sirdata_cmp_id');
delete_site_option('iii_sirdata_cmp_id');
delete_option('iii_ga_third_party');
delete_site_option('iii_ga_third_party');
delete_option('iii_gtag_tracking_id');
delete_site_option('iii_gtag_tracking_id');
delete_option('iii_ga_tracking_id');
delete_site_option('iii_ga_tracking_id');
delete_option('iii_salient_cta_text_01');
delete_site_option('iii_salient_cta_text_01');
delete_option('iii_salient_cta_text_02');
delete_site_option('iii_salient_cta_text_02');
delete_option('iii_micromodal');
delete_site_option('iii_micromodal');
delete_option('iii_lead_time_modal_content');
delete_site_option('iii_lead_time_modal_content');
delete_option('iii_automatic_modal_content');
delete_site_option('iii_automatic_modal_content');
delete_option('iii_feed_links');
delete_site_option('iii_feed_links');
delete_option('iii_gtag_third_party');
delete_site_option('iii_gtag_third_party');
delete_option('iii_ga_cf7_events');
delete_site_option('iii_ga_cf7_events');
delete_option('iii_ga_hs_events');
delete_site_option('iii_ga_hs_events');
delete_option('iii_modal_nav_menu_link');
delete_site_option('iii_modal_nav_menu_link');
delete_option('iii_gs_products_database');
delete_site_option('iii_gs_products_database');
delete_option('iii_salient_cta_icon_01');
delete_site_option('iii_salient_cta_icon_01');
delete_option('iii_salient_cta_url_01');
delete_site_option('iii_salient_cta_url_01');
delete_option('iii_salient_cta_target_01');
delete_site_option('iii_salient_cta_target_01');
delete_option('iii_salient_cta_micromodal_01');
delete_site_option('iii_salient_cta_micromodal_01');
delete_option('iii_salient_cta_icon_02');
delete_site_option('iii_salient_cta_icon_02');
delete_option('iii_salient_cta_url_02');
delete_site_option('iii_salient_cta_url_02');
delete_option('iii_salient_cta_target_02');
delete_site_option('iii_salient_cta_target_02');
delete_option('iii_salient_cta_micromodal_02');
delete_site_option('iii_salient_cta_micromodal_02');
delete_option('iii_salient_cta_exclude');
delete_site_option('iii_salient_cta_exclude');
delete_option('iii_modal_title');
delete_site_option('iii_modal_title');
delete_option('iii_modal_content');
delete_site_option('iii_modal_content');
delete_option('iii_cmp_third_party');
delete_site_option('iii_cmp_third_party');
delete_option('iii_sirdata_third_party');
delete_site_option('iii_sirdata_third_party');
delete_option('iii_ga_linker_domains');
delete_site_option('iii_ga_linker_domains');

// Delete Transients
delete_transient('iii_siiimple_updated');
delete_site_transient('iii_siiimple_updated');
delete_transient('iii_siiimple_activated');
delete_site_transient('iii_siiimple_activated');

