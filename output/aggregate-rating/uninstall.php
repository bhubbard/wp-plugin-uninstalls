<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ps_aggr_slug_act');
delete_site_option('ps_aggr_slug_act');
delete_option('aggr_company_name');
delete_site_option('aggr_company_name');
delete_option('aggr_street_address');
delete_site_option('aggr_street_address');
delete_option('aggr_address_locality');
delete_site_option('aggr_address_locality');
delete_option('aggr_address_region');
delete_site_option('aggr_address_region');
delete_option('aggr_phone');
delete_site_option('aggr_phone');
delete_option('aggr_logo_url');
delete_site_option('aggr_logo_url');
delete_option('rating_count');
delete_site_option('rating_count');
delete_option('rating_scale');
delete_site_option('rating_scale');
delete_option('rating_votes');
delete_site_option('rating_votes');
delete_option('price_range');
delete_site_option('price_range');
delete_option('page_slug');
delete_site_option('page_slug');
delete_option('ps_aggr_company_name');
delete_site_option('ps_aggr_company_name');
delete_option('ps_aggr_street_address');
delete_site_option('ps_aggr_street_address');
delete_option('ps_aggr_address_locality');
delete_site_option('ps_aggr_address_locality');
delete_option('ps_aggr_address_region');
delete_site_option('ps_aggr_address_region');
delete_option('ps_aggr_phone');
delete_site_option('ps_aggr_phone');
delete_option('ps_aggr_logo_url');
delete_site_option('ps_aggr_logo_url');
delete_option('ps_rating_count');
delete_site_option('ps_rating_count');
delete_option('ps_rating_scale');
delete_site_option('ps_rating_scale');
delete_option('ps_rating_votes');
delete_site_option('ps_rating_votes');
delete_option('ps_price_range');
delete_site_option('ps_price_range');

