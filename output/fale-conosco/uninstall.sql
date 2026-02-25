-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('modeView', 'callMe', 'callMe_Token', 'chatNvoip', 'chatNvoip_Token', 'whatsApp', 'ColorNvoipIcon', 'ColorCallmeIcon', 'ColorMaisImIcon', 'ColorWppIcon', 'ImgLogoIcon', 'sideOption', 'ImgLogo', 'TextContactBalloon', 'TextContactWhatsapp', 'select_Cod_Pais_hidden', 'NumberContactWhatsapp', 'Number_Contact_Whatsapp_hidden', 'ColorPrimary', 'ColorBorder', 'ColorBackgroundCallme', 'TxtFirstParagraphCallmeFirstPage', 'TxtSecondParagraphCallmeFirstPage', 'TxtFirstParagraphCallmeSecondPage', 'TxtFirstParagraphCallmeThirdPage', 'TxtSecondParagraphCallmeThirdPage', 'Public_token_FC');

