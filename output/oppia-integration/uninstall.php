<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('oppia_configs');
delete_site_option('oppia_configs');
delete_option('oppia_config_list');
delete_site_option('oppia_config_list');
delete_option('oppia_api_key');
delete_site_option('oppia_api_key');
delete_option('oppia_sections');
delete_site_option('oppia_sections');
delete_option('oppia_section_qty');
delete_site_option('oppia_section_qty');
delete_option('oppia_newconfig');
delete_site_option('oppia_newconfig');
delete_option('oppia_list_size');
delete_site_option('oppia_list_size');
delete_option('oppia_title');
delete_site_option('oppia_title');
delete_option('oppia_beforetitle');
delete_site_option('oppia_beforetitle');
delete_option('oppia_aftertitle');
delete_site_option('oppia_aftertitle');
delete_option('oppia_beforewidget');
delete_site_option('oppia_beforewidget');
delete_option('oppia_afterwidget');
delete_site_option('oppia_afterwidget');
delete_option('oppia_widget_height');
delete_site_option('oppia_widget_height');

