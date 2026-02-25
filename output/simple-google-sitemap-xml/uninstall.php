<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gsxml_store');
delete_site_option('gsxml_store');
delete_option('gsxml_hp');
delete_site_option('gsxml_hp');
delete_option('gsxml_hf');
delete_site_option('gsxml_hf');
delete_option('gsxml_gp');
delete_site_option('gsxml_gp');
delete_option('gsxml_gf');
delete_site_option('gsxml_gf');
delete_option('gsxml_pri_freq');
delete_site_option('gsxml_pri_freq');
delete_option('gsxml_cat');
delete_site_option('gsxml_cat');
delete_option('gsxml_tag');
delete_site_option('gsxml_tag');
delete_option('gsxml_last_ch');
delete_site_option('gsxml_last_ch');

