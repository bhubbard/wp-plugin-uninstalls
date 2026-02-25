<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dh_nf_whitelist_domains');
delete_site_option('dh_nf_whitelist_domains');
delete_option('dh_nf_blacklist_domains');
delete_site_option('dh_nf_blacklist_domains');
delete_option('dh_nf_target_blank');
delete_site_option('dh_nf_target_blank');
delete_option('dh_nf_icons_before_after');
delete_site_option('dh_nf_icons_before_after');
delete_option('dh_nf_show_extlink');
delete_site_option('dh_nf_show_extlink');
delete_option('dh_nf_show_favicon');
delete_site_option('dh_nf_show_favicon');
delete_option('dh_nf_affproduct_amazon_br');
delete_site_option('dh_nf_affproduct_amazon_br');
delete_option('dh_nf_affproduct_amazon_ca');
delete_site_option('dh_nf_affproduct_amazon_ca');
delete_option('dh_nf_affproduct_amazon_cn');
delete_site_option('dh_nf_affproduct_amazon_cn');
delete_option('dh_nf_affproduct_amazon_com');
delete_site_option('dh_nf_affproduct_amazon_com');
delete_option('dh_nf_affproduct_amazon_com_au');
delete_site_option('dh_nf_affproduct_amazon_com_au');
delete_option('dh_nf_affproduct_amazon_co_jp');
delete_site_option('dh_nf_affproduct_amazon_co_jp');
delete_option('dh_nf_affproduct_amazon_co_uk');
delete_site_option('dh_nf_affproduct_amazon_co_uk');
delete_option('dh_nf_affproduct_amazon_de');
delete_site_option('dh_nf_affproduct_amazon_de');
delete_option('dh_nf_affproduct_amazon_es');
delete_site_option('dh_nf_affproduct_amazon_es');
delete_option('dh_nf_affproduct_amazon_fr');
delete_site_option('dh_nf_affproduct_amazon_fr');
delete_option('dh_nf_affproduct_amazon_in');
delete_site_option('dh_nf_affproduct_amazon_in');
delete_option('dh_nf_affproduct_amazon_it');
delete_site_option('dh_nf_affproduct_amazon_it');
delete_option('dh_nf_affproduct_amazon_mx');
delete_site_option('dh_nf_affproduct_amazon_mx');
delete_option('dh_nf_amazon_buynow_target');
delete_site_option('dh_nf_amazon_buynow_target');
delete_option('dh_nf_amazon_buynow_display');
delete_site_option('dh_nf_amazon_buynow_display');
delete_option('dh_nf_affproduct_rakuten_id');
delete_site_option('dh_nf_affproduct_rakuten_id');
delete_option('dh_nf_affproduct_rakuten_mids');
delete_site_option('dh_nf_affproduct_rakuten_mids');
delete_option('dh_nf_affproduct_zazzle_id');
delete_site_option('dh_nf_affproduct_zazzle_id');

