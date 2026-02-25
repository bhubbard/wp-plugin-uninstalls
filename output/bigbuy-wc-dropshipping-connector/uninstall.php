<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('WC_MIPCONNECTOR_VERSION');
delete_site_option('WC_MIPCONNECTOR_VERSION');
delete_option('WC_MIPCONNECTOR_ACCESS_TOKEN');
delete_site_option('WC_MIPCONNECTOR_ACCESS_TOKEN');
delete_option('WC_MIPCONNECTOR_SECRET_KEY');
delete_site_option('WC_MIPCONNECTOR_SECRET_KEY');
delete_option('WC_MIPCONNECTOR_SEND_EMAIL');
delete_site_option('WC_MIPCONNECTOR_SEND_EMAIL');
delete_option('WC_MIPCONNECTOR_TAG_ACTIVE');
delete_site_option('WC_MIPCONNECTOR_TAG_ACTIVE');
delete_option('WC_MIPCONNECTOR_TAG_NAME');
delete_site_option('WC_MIPCONNECTOR_TAG_NAME');
delete_option('WC_MIPCONNECTOR_BRAND_ID');
delete_site_option('WC_MIPCONNECTOR_BRAND_ID');
delete_option('WC_MIPCONNECTOR_BIGBUY_CARRIER_OPTION');
delete_site_option('WC_MIPCONNECTOR_BIGBUY_CARRIER_OPTION');
delete_option('WC_BIGBUY_API_KEY');
delete_site_option('WC_BIGBUY_API_KEY');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('woocommerce_version');
delete_site_option('woocommerce_version');

