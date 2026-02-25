<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ntdtCurrentVersion');
delete_site_option('ntdtCurrentVersion');
delete_option('ntdtCurrentType');
delete_site_option('ntdtCurrentType');
delete_option('optStepRV');
delete_site_option('optStepRV');
delete_option('optSendMail');
delete_site_option('optSendMail');
delete_option('optRedirect');
delete_site_option('optRedirect');
delete_option('optDayTillRV');
delete_site_option('optDayTillRV');
delete_option('optEnabled');
delete_site_option('optEnabled');
delete_option('optBooked');
delete_site_option('optBooked');
delete_option('optDisabled');
delete_site_option('optDisabled');
delete_option('optReason');
delete_site_option('optReason');
delete_option('optBtnBg');
delete_site_option('optBtnBg');
delete_option('optBtnBgHover');
delete_site_option('optBtnBgHover');
delete_option('optBtnCol');
delete_site_option('optBtnCol');
delete_option('optBtnColHover');
delete_site_option('optBtnColHover');
delete_option('optFormatDateRV');
delete_site_option('optFormatDateRV');
delete_option('optPublicHolidays');
delete_site_option('optPublicHolidays');
delete_option('optUserHolidays');
delete_site_option('optUserHolidays');
delete_option('optNbHourButtons');
delete_site_option('optNbHourButtons');
delete_option('optInfoCmt');
delete_site_option('optInfoCmt');
delete_option('optInfoCmtIcon');
delete_site_option('optInfoCmtIcon');
delete_option('optInfoCmtMsg1');
delete_site_option('optInfoCmtMsg1');
delete_option('optInfoCmtFromDate1');
delete_site_option('optInfoCmtFromDate1');
delete_option('optInfoCmtToDate1');
delete_site_option('optInfoCmtToDate1');
delete_option('optInfoCmtColor1');
delete_site_option('optInfoCmtColor1');
delete_option('optInfoCmtMsg2');
delete_site_option('optInfoCmtMsg2');
delete_option('optInfoCmtFromDate2');
delete_site_option('optInfoCmtFromDate2');
delete_option('optInfoCmtToDate2');
delete_site_option('optInfoCmtToDate2');
delete_option('optInfoCmtColor2');
delete_site_option('optInfoCmtColor2');
delete_option('optInfoCmtMsg3');
delete_site_option('optInfoCmtMsg3');
delete_option('optInfoCmtFromDate3');
delete_site_option('optInfoCmtFromDate3');
delete_option('optInfoCmtToDate3');
delete_site_option('optInfoCmtToDate3');
delete_option('optInfoCmtColor3');
delete_site_option('optInfoCmtColor3');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'optStartHourAM_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'optStartMinAM_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'optEndHourAM_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'optEndMinAM_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'optStartHourPM_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'optStartMinPM_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'optEndHourPM_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'optEndMinPM_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'optOpenAM_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'optOpenPM_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'optClosed_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('optSender');
delete_site_option('optSender');
delete_option('optFirm');
delete_site_option('optFirm');
delete_option('optOnlyRV');
delete_site_option('optOnlyRV');
delete_option('optPathRV');
delete_site_option('optPathRV');
delete_option('optReadDataRV');
delete_site_option('optReadDataRV');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'optClosed_6%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'optClosed_0%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('optVersionDB');
delete_site_option('optVersionDB');

