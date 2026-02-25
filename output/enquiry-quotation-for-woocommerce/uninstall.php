<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pi_eqw_captcha');
delete_site_option('pi_eqw_captcha');
delete_option('pi_ewq_do_activation_redirect');
delete_site_option('pi_ewq_do_activation_redirect');
delete_option('pi_eqw_enquiry_cart');
delete_site_option('pi_eqw_enquiry_cart');
delete_option('pi_eqw_captcha_placeholder');
delete_site_option('pi_eqw_captcha_placeholder');
delete_option('pi_eqw_captcha_length');
delete_site_option('pi_eqw_captcha_length');
delete_option('pi_eqw_captcha_characters');
delete_site_option('pi_eqw_captcha_characters');
delete_option('pi_eqw_email');
delete_site_option('pi_eqw_email');
delete_option('pi_eqw_email_subject');
delete_site_option('pi_eqw_email_subject');
delete_option('pi_eqw_email_template');
delete_site_option('pi_eqw_email_template');
delete_option('pi_enq_add_img_url');
delete_site_option('pi_enq_add_img_url');
delete_option('pi_eqw_email_disable_logo');
delete_site_option('pi_eqw_email_disable_logo');
delete_option('pi_eqw_enable_cart');
delete_site_option('pi_eqw_enable_cart');
delete_option('pi_eqw_cart_position');
delete_site_option('pi_eqw_cart_position');
delete_option('pi_eqw_hide_price');
delete_site_option('pi_eqw_hide_price');
delete_option('pi_eqw_redirect_to_enquiry_cart');
delete_site_option('pi_eqw_redirect_to_enquiry_cart');
delete_option('pi_eqw_trouble_shoot_position');
delete_site_option('pi_eqw_trouble_shoot_position');
delete_option('pisol_eqw_button_size');
delete_site_option('pisol_eqw_button_size');
delete_option('pisol_eqw_button_font_size');
delete_site_option('pisol_eqw_button_font_size');
delete_option('pisol_eqw_loop_button_size');
delete_site_option('pisol_eqw_loop_button_size');
delete_option('pisol_eqw_loop_button_font_size');
delete_site_option('pisol_eqw_loop_button_font_size');
delete_option('pi_eqw_enquiry_single_button_text');
delete_site_option('pi_eqw_enquiry_single_button_text');
delete_option('pi_eqw_enquiry_loop_button_text');
delete_site_option('pi_eqw_enquiry_loop_button_text');
delete_option('pi_eqw_enquiry_loop');
delete_site_option('pi_eqw_enquiry_loop');
delete_option('pi_eqw_enquiry_single');
delete_site_option('pi_eqw_enquiry_single');
delete_option('pi_eqw_enquiry_loop_bg_color');
delete_site_option('pi_eqw_enquiry_loop_bg_color');
delete_option('pi_eqw_enquiry_loop_text_color');
delete_site_option('pi_eqw_enquiry_loop_text_color');
delete_option('pi_eqw_enquiry_single_bg_color');
delete_site_option('pi_eqw_enquiry_single_bg_color');
delete_option('pi_eqw_enquiry_single_text_color');
delete_site_option('pi_eqw_enquiry_single_text_color');
delete_option('pi_eqw_enable_honeypot');
delete_site_option('pi_eqw_enable_honeypot');
delete_option('pi_eqw_webhook_url');
delete_site_option('pi_eqw_webhook_url');
delete_option('woocommerce_email_background_color');
delete_site_option('woocommerce_email_background_color');
delete_option('woocommerce_email_body_background_color');
delete_site_option('woocommerce_email_body_background_color');
delete_option('woocommerce_email_base_color');
delete_site_option('woocommerce_email_base_color');
delete_option('woocommerce_email_text_color');
delete_site_option('woocommerce_email_text_color');
delete_option('pi_eqw_show_message_as_row');
delete_site_option('pi_eqw_show_message_as_row');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pi_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pi_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pi_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pi_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pi_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pi_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pi_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pi_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pi_subject' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pi_subject' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pi_subject' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pi_subject' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pi_message' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pi_message' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pi_message' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pi_message' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pi_products_info' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pi_products_info' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pi_products_info' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pi_products_info' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pi_products_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pi_products_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pi_products_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pi_products_id' ) );

