<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rtw_pgaepb_header_setting_opt');
delete_site_option('rtw_pgaepb_header_setting_opt');
delete_option('rtw_pgaepb_footer_setting_opt');
delete_site_option('rtw_pgaepb_footer_setting_opt');
delete_option('rtw_pgaepb_basic_setting_opt');
delete_site_option('rtw_pgaepb_basic_setting_opt');
delete_option('rtw_pgaepb_css_setting_opt');
delete_site_option('rtw_pgaepb_css_setting_opt');
delete_option('rtw_pgaepb_watermark_setting_opt');
delete_site_option('rtw_pgaepb_watermark_setting_opt');
delete_option('rtw_pgaepb_custom_fonts');
delete_site_option('rtw_pgaepb_custom_fonts');
delete_option('rtw_pgaepb_offer_time');
delete_site_option('rtw_pgaepb_offer_time');
delete_option('rtwwpf_css_setting_opt');
delete_site_option('rtwwpf_css_setting_opt');
delete_option('rtwwpf_watermark_setting_opt');
delete_site_option('rtwwpf_watermark_setting_opt');

