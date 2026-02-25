<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aip3_inser_af_byte');
delete_site_option('aip3_inser_af_byte');
delete_option('aip3_noads_af_pub');
delete_site_option('aip3_noads_af_pub');
delete_option('aip3_ssp');
delete_site_option('aip3_ssp');
delete_option('aip3_noads_page');
delete_site_option('aip3_noads_page');
delete_option('aip3_enable_inad');
delete_site_option('aip3_enable_inad');
delete_option('aip3_enable_topad');
delete_site_option('aip3_enable_topad');
delete_option('aip3_enable_btad');
delete_site_option('aip3_enable_btad');
delete_option('aip3_enable_adit');
delete_site_option('aip3_enable_adit');
delete_option('aip3_ads_m');
delete_site_option('aip3_ads_m');
delete_option('aip3_ads_d');
delete_site_option('aip3_ads_d');
delete_option('aip3_ads_a');
delete_site_option('aip3_ads_a');
delete_option('aip3_ads_mt');
delete_site_option('aip3_ads_mt');
delete_option('aip3_ads_dt');
delete_site_option('aip3_ads_dt');
delete_option('aip3_ads_at');
delete_site_option('aip3_ads_at');
delete_option('aip3_ads_mb');
delete_site_option('aip3_ads_mb');
delete_option('aip3_ads_db');
delete_site_option('aip3_ads_db');
delete_option('aip3_ads_ab');
delete_site_option('aip3_ads_ab');

