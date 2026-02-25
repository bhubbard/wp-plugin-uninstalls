<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ascmb_custom_css');
delete_site_option('ascmb_custom_css');
delete_option('ascmb_ddd_whatsapp');
delete_site_option('ascmb_ddd_whatsapp');
delete_option('ascmb_WhatsApp_phone');
delete_site_option('ascmb_WhatsApp_phone');
delete_option('ascmb_WhatsApp_message');
delete_site_option('ascmb_WhatsApp_message');
delete_option('ascmb_ddd_telefone');
delete_site_option('ascmb_ddd_telefone');
delete_option('ascmb_telefone');
delete_site_option('ascmb_telefone');
delete_option('ascmb_mapa');
delete_site_option('ascmb_mapa');
delete_option('ascmb_WhatsApp_color');
delete_site_option('ascmb_WhatsApp_color');
delete_option('ascmb_whatsAppFont_color');
delete_site_option('ascmb_whatsAppFont_color');
delete_option('ascmb_telefone_color');
delete_site_option('ascmb_telefone_color');
delete_option('ascmb_telefoneFont_color');
delete_site_option('ascmb_telefoneFont_color');
delete_option('ascmb_share_color');
delete_site_option('ascmb_share_color');
delete_option('ascmb_shareFont_color');
delete_site_option('ascmb_shareFont_color');
delete_option('ascmb_mapa_color');
delete_site_option('ascmb_mapa_color');
delete_option('ascmb_mapaFont_color');
delete_site_option('ascmb_mapaFont_color');
delete_option('ascmb_Background_color');
delete_site_option('ascmb_Background_color');
delete_option('ascmb_checkWhatsApp');
delete_site_option('ascmb_checkWhatsApp');
delete_option('ascmb_checkTelefone');
delete_site_option('ascmb_checkTelefone');
delete_option('ascmb_checkMapa');
delete_site_option('ascmb_checkMapa');
delete_option('ascmb_checkShare');
delete_site_option('ascmb_checkShare');
delete_option('ascmb_checkBar');
delete_site_option('ascmb_checkBar');

