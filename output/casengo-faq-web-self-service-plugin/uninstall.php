<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cas_faq_searchbar');
delete_site_option('cas_faq_searchbar');
delete_option('cas_faq_toparticlesection');
delete_site_option('cas_faq_toparticlesection');
delete_option('cas_faq_compatibility');
delete_site_option('cas_faq_compatibility');
delete_option('cas_faq_show_article_bullets');
delete_site_option('cas_faq_show_article_bullets');
delete_option('cas_faq_style');
delete_site_option('cas_faq_style');
delete_option('casengo-faq-simple-style-editor');
delete_site_option('casengo-faq-simple-style-editor');
delete_option('cas_faq_custom_css');
delete_site_option('cas_faq_custom_css');
delete_option('cas_widget_domain');
delete_site_option('cas_widget_domain');
delete_option('casengo_faq_do_activation_redirect');
delete_site_option('casengo_faq_do_activation_redirect');
delete_option('casengo_faq_pagetitle');
delete_site_option('casengo_faq_pagetitle');
delete_option('cas_faq_pagetitle');
delete_site_option('cas_faq_pagetitle');
delete_option('cas_faq_enabled');
delete_site_option('cas_faq_enabled');

