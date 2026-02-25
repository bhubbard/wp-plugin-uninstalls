<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wfatcb_price');
delete_site_option('wfatcb_price');
delete_option('wfatcb_img');
delete_site_option('wfatcb_img');
delete_option('wfatcb_txt_color');
delete_site_option('wfatcb_txt_color');
delete_option('wfatcb_btn_text');
delete_site_option('wfatcb_btn_text');
delete_option('wfatcb_bg_main');
delete_site_option('wfatcb_bg_main');
delete_option('wfatcb_btnbg');
delete_site_option('wfatcb_btnbg');
delete_option('wfatcb_attributes');
delete_site_option('wfatcb_attributes');
delete_option('wfatcb_btnbg_border');
delete_site_option('wfatcb_btnbg_border');
delete_option('wfatcb_only_mobile');
delete_site_option('wfatcb_only_mobile');

