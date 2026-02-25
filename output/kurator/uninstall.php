<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kurator-box-analytic');
delete_site_option('kurator-box-analytic');
delete_option('kurator-box-color-btn');
delete_site_option('kurator-box-color-btn');
delete_option('kurator-box-color-txt');
delete_site_option('kurator-box-color-txt');
delete_option('kurator-box-font-size');
delete_site_option('kurator-box-font-size');
delete_option('kurator-box-border-radius');
delete_site_option('kurator-box-border-radius');
delete_option('kurator-box-color-btn-hover');
delete_site_option('kurator-box-color-btn-hover');
delete_option('kurator-box-color-txt-hover');
delete_site_option('kurator-box-color-txt-hover');
delete_option('kurator-box-color-btn-important');
delete_site_option('kurator-box-color-btn-important');
delete_option('kurator-box-color-txt-important');
delete_site_option('kurator-box-color-txt-important');
delete_option('kurator-box-font-size-important');
delete_site_option('kurator-box-font-size-important');
delete_option('kurator-box-border-radius-important');
delete_site_option('kurator-box-border-radius-important');
delete_option('kurator-box-color-btn-hover-important');
delete_site_option('kurator-box-color-btn-hover-important');
delete_option('kurator-box-color-txt-hover-important');
delete_site_option('kurator-box-color-txt-hover-important');

