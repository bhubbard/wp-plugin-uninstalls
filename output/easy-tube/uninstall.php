<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('Chanel API');
delete_site_option('Chanel API');
delete_option('Chanel PID');
delete_site_option('Chanel PID');
delete_option('MaxResult');
delete_site_option('MaxResult');
delete_option('Style');
delete_site_option('Style');
delete_option('sVTv');
delete_site_option('sVTv');
delete_option('Easy Tube Font Style');
delete_site_option('Easy Tube Font Style');
delete_option('Subscriber Button');
delete_site_option('Subscriber Button');
delete_option('Subscriber Text');
delete_site_option('Subscriber Text');
delete_option('ShowMOre');
delete_site_option('ShowMOre');
delete_option('SelectStyle');
delete_site_option('SelectStyle');
delete_option('Chanel ID');
delete_site_option('Chanel ID');

