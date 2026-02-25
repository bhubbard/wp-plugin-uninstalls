<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('brnwp_testo_pers');
delete_site_option('brnwp_testo_pers');
delete_option('brnwp_text');
delete_site_option('brnwp_text');
delete_option('brnwp_fil_cat');
delete_site_option('brnwp_fil_cat');
delete_option('brnwp_num_not');
delete_site_option('brnwp_num_not');
delete_option('brnwp_theme');
delete_site_option('brnwp_theme');
delete_option('brnwp_dim_barra');
delete_site_option('brnwp_dim_barra');
delete_option('brnwp_col_tit');
delete_site_option('brnwp_col_tit');
delete_option('brnwp_col_bar_tit');
delete_site_option('brnwp_col_bar_tit');
delete_option('brnwp_col_not');
delete_site_option('brnwp_col_not');
delete_option('brnwp_col_bar');
delete_site_option('brnwp_col_bar');
delete_option('brnwp_col_link');
delete_site_option('brnwp_col_link');
delete_option('brnwp_title_content');
delete_site_option('brnwp_title_content');
delete_option('brnwp_style');
delete_site_option('brnwp_style');

