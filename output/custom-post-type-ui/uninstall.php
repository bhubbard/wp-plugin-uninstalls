<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('cptui-user-dismissed-extended-upsell');
delete_site_option('cptui-user-dismissed-extended-upsell');
delete_option('cptui_post_types');
delete_site_option('cptui_post_types');
delete_option('cptui_taxonomies');
delete_site_option('cptui_taxonomies');
delete_option('cpt_custom_post_types');
delete_site_option('cpt_custom_post_types');
delete_option('cpt_custom_tax_types');
delete_site_option('cpt_custom_tax_types');
delete_option('cptui_new_install');
delete_site_option('cptui_new_install');

// Delete Transients
delete_transient('cptui_activation_redirect');
delete_site_transient('cptui_activation_redirect');
delete_transient('cptui_flush_rewrite_rules');
delete_site_transient('cptui_flush_rewrite_rules');

