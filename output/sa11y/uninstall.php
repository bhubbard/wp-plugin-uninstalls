<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sa11y_settings');
delete_site_option('sa11y_settings');
delete_option('sa11y_network_target');
delete_site_option('sa11y_network_target');
delete_option('sa11y_network_developer_checks');
delete_site_option('sa11y_network_developer_checks');
delete_option('sa11y_network_readability');
delete_site_option('sa11y_network_readability');
delete_option('sa11y_network_readability_target');
delete_site_option('sa11y_network_readability_target');
delete_option('sa11y_network_readability_ignore');
delete_site_option('sa11y_network_readability_ignore');
delete_option('sa11y_network_region_ignore');
delete_site_option('sa11y_network_region_ignore');
delete_option('sa11y_network_contrast_ignore');
delete_site_option('sa11y_network_contrast_ignore');
delete_option('sa11y_network_outline_ignore');
delete_site_option('sa11y_network_outline_ignore');
delete_option('sa11y_network_header_ignore');
delete_site_option('sa11y_network_header_ignore');
delete_option('sa11y_network_image_ignore');
delete_site_option('sa11y_network_image_ignore');
delete_option('sa11y_network_link_ignore');
delete_site_option('sa11y_network_link_ignore');
delete_option('sa11y_network_link_ignore_span');
delete_site_option('sa11y_network_link_ignore_span');
delete_option('sa11y_network_link_flag');
delete_site_option('sa11y_network_link_flag');
delete_option('sa11y_network_noRun');
delete_site_option('sa11y_network_noRun');
delete_option('sa11y_network_shadow_components');
delete_site_option('sa11y_network_shadow_components');
delete_option('sa11y_network_extra_props');
delete_site_option('sa11y_network_extra_props');
delete_option('sa11y_edit_image_link');
delete_site_option('sa11y_edit_image_link');
delete_option('sa11y_network_panel_position');
delete_site_option('sa11y_network_panel_position');
delete_option('sa11y_network_form_labels');
delete_site_option('sa11y_network_form_labels');
delete_option('sa11y_network_contrast');
delete_site_option('sa11y_network_contrast');
delete_option('sa11y_network_links_advanced');
delete_site_option('sa11y_network_links_advanced');
delete_option('sa11y_network_colour_filter');
delete_site_option('sa11y_network_colour_filter');
delete_option('sa11y_network_all_checks');
delete_site_option('sa11y_network_all_checks');

