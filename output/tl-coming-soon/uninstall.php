<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tlcs_general_options');
delete_site_option('tlcs_general_options');
delete_option('tlcs_template_options');
delete_site_option('tlcs_template_options');
delete_option('tlcs_design_options');
delete_site_option('tlcs_design_options');
delete_option('tlcs_social_options');
delete_site_option('tlcs_social_options');
delete_option('tlcs_translation_options');
delete_site_option('tlcs_translation_options');
delete_option('tlcs_support_options');
delete_site_option('tlcs_support_options');
delete_option('tlcs_design_options_campaign_monitor_clients');
delete_site_option('tlcs_design_options_campaign_monitor_clients');
delete_option('tlcs_design_options_campaign_monitor_lists');
delete_site_option('tlcs_design_options_campaign_monitor_lists');
delete_option('tlcs_design_options_convertkit_forms');
delete_site_option('tlcs_design_options_convertkit_forms');
delete_option('tlcs_design_options_getresponse_campaigns');
delete_site_option('tlcs_design_options_getresponse_campaigns');
delete_option('tlcs_design_options_mailchimp_lists');
delete_site_option('tlcs_design_options_mailchimp_lists');
delete_option('tlcs_design_options_sendinblue_lists');
delete_site_option('tlcs_design_options_sendinblue_lists');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'tlcs_design_options_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

