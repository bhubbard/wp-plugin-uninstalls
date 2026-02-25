<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('syslog_dest');
delete_site_option('syslog_dest');
delete_option('syslog_channel');
delete_site_option('syslog_channel');
delete_option('syslog_prefix');
delete_site_option('syslog_prefix');
delete_option('syslog_logmem');
delete_site_option('syslog_logmem');
delete_option('syslog_logtime');
delete_site_option('syslog_logtime');
delete_option('syslog_colour');
delete_site_option('syslog_colour');
delete_option('syslog_escape_newlines');
delete_site_option('syslog_escape_newlines');
delete_option('syslog_strict');
delete_site_option('syslog_strict');
delete_option('syslog_noajax');
delete_site_option('syslog_noajax');
delete_option('syslog_nojscss');
delete_site_option('syslog_nojscss');
delete_option('syslog_ignore_urls');
delete_site_option('syslog_ignore_urls');

// Delete Transients
delete_transient('bang_syslog_tail');
delete_site_transient('bang_syslog_tail');
delete_transient('bang_syslog_messages');
delete_site_transient('bang_syslog_messages');

