-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('juicenet_gdpr_nome_sito', 'juicenet_gdpr_titolare_sito', 'juicenet_gdpr_email_sito', 'juicenet_gdpr_cookie_page', 'juicenet_gdpr_privacy_page', 'juicenet_gdpr_show_banner', 'juicenet_gdpr_google_analytics_code', 'juicenet_gdpr_link_blank', 'juicenet_gdpr_testo_link', 'juicenet_gdpr_testo_deny', 'juicenet_gdpr_testo_allow', 'juicenet_gdpr_testo_banner', 'juicenet_gdpr_popup_color', 'juicenet_gdpr_button_color');

