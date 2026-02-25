<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('modeView');
delete_site_option('modeView');
delete_option('callMe');
delete_site_option('callMe');
delete_option('callMe_Token');
delete_site_option('callMe_Token');
delete_option('chatNvoip');
delete_site_option('chatNvoip');
delete_option('chatNvoip_Token');
delete_site_option('chatNvoip_Token');
delete_option('whatsApp');
delete_site_option('whatsApp');
delete_option('ColorNvoipIcon');
delete_site_option('ColorNvoipIcon');
delete_option('ColorCallmeIcon');
delete_site_option('ColorCallmeIcon');
delete_option('ColorMaisImIcon');
delete_site_option('ColorMaisImIcon');
delete_option('ColorWppIcon');
delete_site_option('ColorWppIcon');
delete_option('ImgLogoIcon');
delete_site_option('ImgLogoIcon');
delete_option('sideOption');
delete_site_option('sideOption');
delete_option('ImgLogo');
delete_site_option('ImgLogo');
delete_option('TextContactBalloon');
delete_site_option('TextContactBalloon');
delete_option('TextContactWhatsapp');
delete_site_option('TextContactWhatsapp');
delete_option('select_Cod_Pais_hidden');
delete_site_option('select_Cod_Pais_hidden');
delete_option('NumberContactWhatsapp');
delete_site_option('NumberContactWhatsapp');
delete_option('Number_Contact_Whatsapp_hidden');
delete_site_option('Number_Contact_Whatsapp_hidden');
delete_option('ColorPrimary');
delete_site_option('ColorPrimary');
delete_option('ColorBorder');
delete_site_option('ColorBorder');
delete_option('ColorBackgroundCallme');
delete_site_option('ColorBackgroundCallme');
delete_option('TxtFirstParagraphCallmeFirstPage');
delete_site_option('TxtFirstParagraphCallmeFirstPage');
delete_option('TxtSecondParagraphCallmeFirstPage');
delete_site_option('TxtSecondParagraphCallmeFirstPage');
delete_option('TxtFirstParagraphCallmeSecondPage');
delete_site_option('TxtFirstParagraphCallmeSecondPage');
delete_option('TxtFirstParagraphCallmeThirdPage');
delete_site_option('TxtFirstParagraphCallmeThirdPage');
delete_option('TxtSecondParagraphCallmeThirdPage');
delete_site_option('TxtSecondParagraphCallmeThirdPage');
delete_option('Public_token_FC');
delete_site_option('Public_token_FC');

