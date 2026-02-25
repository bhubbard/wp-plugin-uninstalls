<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wwpdf_global');
delete_site_option('wwpdf_global');
delete_option('wwpdf_files');
delete_site_option('wwpdf_files');
delete_option('wwpdf_files_v4');
delete_site_option('wwpdf_files_v4');
delete_option('dlm_stamper_global');
delete_site_option('dlm_stamper_global');
delete_option('dlm_stamper_files');
delete_site_option('dlm_stamper_files');
delete_option('wwpdf_footer_input_premium');
delete_site_option('wwpdf_footer_input_premium');
delete_option('dlm_stamper_stamp');
delete_site_option('dlm_stamper_stamp');
delete_option('wwpdf_margin_left_right');
delete_site_option('wwpdf_margin_left_right');
delete_option('wwpdf_font_premium');
delete_site_option('wwpdf_font_premium');
delete_option('wwpdf_footer_size_premium');
delete_site_option('wwpdf_footer_size_premium');
delete_option('wwpdf_footer_color_premium');
delete_site_option('wwpdf_footer_color_premium');
delete_option('wwpdf_footer_finetune_Y_premium');
delete_site_option('wwpdf_footer_finetune_Y_premium');
delete_option('wwpdf_password');
delete_site_option('wwpdf_password');
delete_option('wwpdf_disable_printing');
delete_site_option('wwpdf_disable_printing');
delete_option('wwpdf_disable_mods');
delete_site_option('wwpdf_disable_mods');
delete_option('wwpdf_disable_copy');
delete_site_option('wwpdf_disable_copy');
delete_option('wwpdf_disable_annot');
delete_site_option('wwpdf_disable_annot');
delete_option('dlm_stamper_margin_lr');
delete_site_option('dlm_stamper_margin_lr');
delete_option('dlm_stamper_font');
delete_site_option('dlm_stamper_font');
delete_option('dlm_stamper_size');
delete_site_option('dlm_stamper_size');
delete_option('dlm_stamper_color');
delete_site_option('dlm_stamper_color');
delete_option('dlm_stamper_finetune_Y');
delete_site_option('dlm_stamper_finetune_Y');
delete_option('dlm_stamper_pwd');
delete_site_option('dlm_stamper_pwd');
delete_option('dlm_stamper_dis_printing');
delete_site_option('dlm_stamper_dis_printing');
delete_option('dlm_stamper_dis_mods');
delete_site_option('dlm_stamper_dis_mods');
delete_option('dlm_stamper_dis_copy');
delete_site_option('dlm_stamper_dis_copy');
delete_option('dlm_stamper_dis_annot');
delete_site_option('dlm_stamper_dis_annot');
delete_option('eddimark_margin_left_right');
delete_site_option('eddimark_margin_left_right');
delete_option('woocommerce_file_download_method');
delete_site_option('woocommerce_file_download_method');
delete_option('pdfink_attribution');
delete_site_option('pdfink_attribution');
delete_option('wwpdf_delete_checkbox');
delete_site_option('wwpdf_delete_checkbox');
delete_option('dlm_stamper_lnt');
delete_site_option('dlm_stamper_lnt');
delete_option('wwpdf_donate_dismiss_08-28');
delete_site_option('wwpdf_donate_dismiss_08-28');
delete_option('wwpdf_enable');
delete_site_option('wwpdf_enable');
delete_option('wwpdf_footer_input');
delete_site_option('wwpdf_footer_input');
delete_option('wwpdf_font');
delete_site_option('wwpdf_font');
delete_option('wwpdf_footer_size');
delete_site_option('wwpdf_footer_size');
delete_option('wwpdf_footer_color');
delete_site_option('wwpdf_footer_color');
delete_option('wwpdf_footer_y');
delete_site_option('wwpdf_footer_y');
delete_option('wwpdf_debug_mode');
delete_site_option('wwpdf_debug_mode');
delete_option('eddimark_textarea_fixed');
delete_site_option('eddimark_textarea_fixed');
delete_option('edd_settings');
delete_site_option('edd_settings');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wwpdf_ignore_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wwpdf_ignore_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wwpdf_ignore_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wwpdf_ignore_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'wwpdf_ignore_notice%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'wwpdf_ignore_notice%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'wwpdf_ignore_notice%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'wwpdf_ignore_notice%' ) );

