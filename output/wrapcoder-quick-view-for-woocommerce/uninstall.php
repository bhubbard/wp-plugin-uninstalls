<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('qv-checkbox');
delete_site_option('qv-checkbox');
delete_option('qv-btn-text');
delete_site_option('qv-btn-text');
delete_option('qv-btn-txt');
delete_site_option('qv-btn-txt');
delete_option('qv-btn-txt-hover');
delete_site_option('qv-btn-txt-hover');
delete_option('qv-btn-bg');
delete_site_option('qv-btn-bg');
delete_option('qv-btn-bg-hover');
delete_site_option('qv-btn-bg-hover');
delete_option('qv-btn-pos');
delete_site_option('qv-btn-pos');
delete_option('qv-btn-txt-padding');
delete_site_option('qv-btn-txt-padding');
delete_option('qv-btn-txt-size');
delete_site_option('qv-btn-txt-size');
delete_option('qv-btn-br');
delete_site_option('qv-btn-br');

