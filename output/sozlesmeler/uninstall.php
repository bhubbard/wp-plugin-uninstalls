<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocontracts_1a');
delete_site_option('woocontracts_1a');
delete_option('woocontracts_2a');
delete_site_option('woocontracts_2a');
delete_option('woocontracts_3a');
delete_site_option('woocontracts_3a');
delete_option('woocontracts_baslik');
delete_site_option('woocontracts_baslik');
delete_option('woocontracts_1_baslik');
delete_site_option('woocontracts_1_baslik');
delete_option('woocontracts_2_baslik');
delete_site_option('woocontracts_2_baslik');
delete_option('woocontracts_3_baslik');
delete_site_option('woocontracts_3_baslik');
delete_option('woocontracts_1_yaz');
delete_site_option('woocontracts_1_yaz');
delete_option('woocontracts_2_yaz');
delete_site_option('woocontracts_2_yaz');
delete_option('woocontracts_3_yaz');
delete_site_option('woocontracts_3_yaz');
delete_option('woocontracts_TCR');
delete_site_option('woocontracts_TCR');
delete_option(' woocontracts_baslik');
delete_site_option(' woocontracts_baslik');
delete_option(' woocontracts_1_baslik');
delete_site_option(' woocontracts_1_baslik');
delete_option(' woocontracts_2_baslik');
delete_site_option(' woocontracts_2_baslik');
delete_option(' woocontracts_3_baslik');
delete_site_option(' woocontracts_3_baslik');
delete_option('wctr_logoX');
delete_site_option('wctr_logoX');
delete_option('wctr_logoY');
delete_site_option('wctr_logoY');
delete_option('wctr_logoW');
delete_site_option('wctr_logoW');
delete_option('wctr_logoH');
delete_site_option('wctr_logoH');
delete_option('wctr_logoL');
delete_site_option('wctr_logoL');

