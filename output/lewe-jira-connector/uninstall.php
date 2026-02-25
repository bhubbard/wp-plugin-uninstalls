<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lewe-jira-connector_license_key_text');
delete_site_option('lewe-jira-connector_license_key_text');
delete_option('lewe-jira-connector_issuebutton_color_select');
delete_site_option('lewe-jira-connector_issuebutton_color_select');
delete_option('lewe-jira-connector_issuebutton_outline_checkbox');
delete_site_option('lewe-jira-connector_issuebutton_outline_checkbox');
delete_option('lewe-jira-connector_issuebutton_summary_chars_number');
delete_site_option('lewe-jira-connector_issuebutton_summary_chars_number');
delete_option('lewe-jira-connector_issuebutton_linktojira_checkbox');
delete_site_option('lewe-jira-connector_issuebutton_linktojira_checkbox');
delete_option('lewe-jira-connector_issueinline_color_select');
delete_site_option('lewe-jira-connector_issueinline_color_select');
delete_option('lewe-jira-connector_issueinline_summary_chars_number');
delete_site_option('lewe-jira-connector_issueinline_summary_chars_number');
delete_option('lewe-jira-connector_issueinline_linktojira_checkbox');
delete_site_option('lewe-jira-connector_issueinline_linktojira_checkbox');
delete_option('lewe-jira-connector_issuepanel_color_select');
delete_site_option('lewe-jira-connector_issuepanel_color_select');
delete_option('lewe-jira-connector_issuepanel_show_summary_checkbox');
delete_site_option('lewe-jira-connector_issuepanel_show_summary_checkbox');
delete_option('lewe-jira-connector_issuepanel_show_description_checkbox');
delete_site_option('lewe-jira-connector_issuepanel_show_description_checkbox');
delete_option('lewe-jira-connector_issuepanel_show_lastcomment_checkbox');
delete_site_option('lewe-jira-connector_issuepanel_show_lastcomment_checkbox');
delete_option('lewe-jira-connector_issuepanel_description_chars_number');
delete_site_option('lewe-jira-connector_issuepanel_description_chars_number');
delete_option('lewe-jira-connector_issuepanel_linktojira_checkbox');
delete_site_option('lewe-jira-connector_issuepanel_linktojira_checkbox');
delete_option('lewe-jira-connector_issuefilter_show_issuetype_checkbox');
delete_site_option('lewe-jira-connector_issuefilter_show_issuetype_checkbox');
delete_option('lewe-jira-connector_issuefilter_show_priority_checkbox');
delete_site_option('lewe-jira-connector_issuefilter_show_priority_checkbox');
delete_option('lewe-jira-connector_issuefilter_show_key_checkbox');
delete_site_option('lewe-jira-connector_issuefilter_show_key_checkbox');
delete_option('lewe-jira-connector_issuefilter_show_summary_checkbox');
delete_site_option('lewe-jira-connector_issuefilter_show_summary_checkbox');
delete_option('lewe-jira-connector_issuefilter_show_description_checkbox');
delete_site_option('lewe-jira-connector_issuefilter_show_description_checkbox');
delete_option('lewe-jira-connector_issuefilter_show_reporter_checkbox');
delete_site_option('lewe-jira-connector_issuefilter_show_reporter_checkbox');
delete_option('lewe-jira-connector_issuefilter_show_assignee_checkbox');
delete_site_option('lewe-jira-connector_issuefilter_show_assignee_checkbox');
delete_option('lewe-jira-connector_issuefilter_show_created_checkbox');
delete_site_option('lewe-jira-connector_issuefilter_show_created_checkbox');
delete_option('lewe-jira-connector_issuefilter_show_duedate_checkbox');
delete_site_option('lewe-jira-connector_issuefilter_show_duedate_checkbox');
delete_option('lewe-jira-connector_issuefilter_show_versions_checkbox');
delete_site_option('lewe-jira-connector_issuefilter_show_versions_checkbox');
delete_option('lewe-jira-connector_issuefilter_show_fixversions_checkbox');
delete_site_option('lewe-jira-connector_issuefilter_show_fixversions_checkbox');
delete_option('lewe-jira-connector_issuefilter_show_resolution_checkbox');
delete_site_option('lewe-jira-connector_issuefilter_show_resolution_checkbox');
delete_option('lewe-jira-connector_issuefilter_show_status_checkbox');
delete_site_option('lewe-jira-connector_issuefilter_show_status_checkbox');
delete_option('lewe-jira-connector_issuefilter_color_rows_checkbox');
delete_site_option('lewe-jira-connector_issuefilter_color_rows_checkbox');
delete_option('lewe-jira-connector_issuefilter_startat_number');
delete_site_option('lewe-jira-connector_issuefilter_startat_number');
delete_option('lewe-jira-connector_issuefilter_maxresults_number');
delete_site_option('lewe-jira-connector_issuefilter_maxresults_number');
delete_option('lewe-jira-connector_issuefilter_showcount_checkbox');
delete_site_option('lewe-jira-connector_issuefilter_showcount_checkbox');
delete_option('lewe-jira-connector_issuefilter_linktojira_checkbox');
delete_site_option('lewe-jira-connector_issuefilter_linktojira_checkbox');
delete_option('lewe-jira-connector_statuscolor_todo_select');
delete_site_option('lewe-jira-connector_statuscolor_todo_select');
delete_option('lewe-jira-connector_statuscolor_inprogress_select');
delete_site_option('lewe-jira-connector_statuscolor_inprogress_select');
delete_option('lewe-jira-connector_statuscolor_done_select');
delete_site_option('lewe-jira-connector_statuscolor_done_select');
delete_option('lewe-jira-connector_delete_on_uninstall_checkbox');
delete_site_option('lewe-jira-connector_delete_on_uninstall_checkbox');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_statuscolor_todo_select' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_statuscolor_inprogress_select' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_statuscolor_done_select' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_issuefilter_show_issuetype_checkbox' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_issuefilter_show_priority_checkbox' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_issuefilter_show_key_checkbox' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_issuefilter_show_summary_checkbox' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_issuefilter_show_description_checkbox' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_issuefilter_show_reporter_checkbox' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_issuefilter_show_assignee_checkbox' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_issuefilter_show_created_checkbox' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_issuefilter_show_duedate_checkbox' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_issuefilter_show_versions_checkbox' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_issuefilter_show_fixversions_checkbox' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_issuefilter_show_resolution_checkbox' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_issuefilter_show_status_checkbox' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_issuefilter_startat_number' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_issuefilter_maxresults_number' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_issuefilter_showcount_checkbox' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_issuefilter_linktojira_checkbox' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_issuefilter_color_rows_checkbox' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_issuepanel_color_select' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_issuepanel_description_chars_number' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_issuepanel_linktojira_checkbox' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_issuepanel_show_summary_checkbox' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_issuepanel_show_description_checkbox' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_issuepanel_show_lastcomment_checkbox' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_issuebutton_color_select' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_issuebutton_summary_chars_number' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_issueinline_linktojira_checkbox' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_issuebutton_outline_checkbox' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_issuebutton_linktojira_checkbox' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_license_key_text' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_delete_on_uninstall_checkbox' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'jira_host_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'jira_host_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'jira_host_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'jira_host_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'jira_host_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'jira_host_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'jira_host_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'jira_host_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'jira_host_username' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'jira_host_username' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'jira_host_username' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'jira_host_username' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'jira_host_password' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'jira_host_password' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'jira_host_password' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'jira_host_password' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'jira_host_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'jira_host_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'jira_host_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'jira_host_token' ) );

