<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fqaas_enable_faq_alias');
delete_site_option('fqaas_enable_faq_alias');
delete_option('fqaas_enable_schema');
delete_site_option('fqaas_enable_schema');
delete_option('fqaas_theme_styles');
delete_site_option('fqaas_theme_styles');
delete_option('fqaas_custom_css');
delete_site_option('fqaas_custom_css');

