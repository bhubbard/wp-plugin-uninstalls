<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('juicenet_gdpr_nome_sito');
delete_site_option('juicenet_gdpr_nome_sito');
delete_option('juicenet_gdpr_titolare_sito');
delete_site_option('juicenet_gdpr_titolare_sito');
delete_option('juicenet_gdpr_email_sito');
delete_site_option('juicenet_gdpr_email_sito');
delete_option('juicenet_gdpr_cookie_page');
delete_site_option('juicenet_gdpr_cookie_page');
delete_option('juicenet_gdpr_privacy_page');
delete_site_option('juicenet_gdpr_privacy_page');
delete_option('juicenet_gdpr_show_banner');
delete_site_option('juicenet_gdpr_show_banner');
delete_option('juicenet_gdpr_google_analytics_code');
delete_site_option('juicenet_gdpr_google_analytics_code');
delete_option('juicenet_gdpr_link_blank');
delete_site_option('juicenet_gdpr_link_blank');
delete_option('juicenet_gdpr_testo_link');
delete_site_option('juicenet_gdpr_testo_link');
delete_option('juicenet_gdpr_testo_deny');
delete_site_option('juicenet_gdpr_testo_deny');
delete_option('juicenet_gdpr_testo_allow');
delete_site_option('juicenet_gdpr_testo_allow');
delete_option('juicenet_gdpr_testo_banner');
delete_site_option('juicenet_gdpr_testo_banner');
delete_option('juicenet_gdpr_popup_color');
delete_site_option('juicenet_gdpr_popup_color');
delete_option('juicenet_gdpr_button_color');
delete_site_option('juicenet_gdpr_button_color');

