<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kasuga_scbc_button_top');
delete_site_option('kasuga_scbc_button_top');
delete_option('kasuga_scbc_button_right');
delete_site_option('kasuga_scbc_button_right');
delete_option('kasuga_scbc_label_copy');
delete_site_option('kasuga_scbc_label_copy');
delete_option('kasuga_scbc_label_copied');
delete_site_option('kasuga_scbc_label_copied');
delete_option('kasuga_scbc_button_size');
delete_site_option('kasuga_scbc_button_size');
delete_option('kasuga_scbc_button_bg_color');
delete_site_option('kasuga_scbc_button_bg_color');
delete_option('kasuga_scbc_button_text_color');
delete_site_option('kasuga_scbc_button_text_color');
delete_option('kasuga_scbc_button_bg_transparent');
delete_site_option('kasuga_scbc_button_bg_transparent');
delete_option('kasuga_scbc_enable_max_height');
delete_site_option('kasuga_scbc_enable_max_height');
delete_option('kasuga_scbc_max_height');
delete_site_option('kasuga_scbc_max_height');
delete_option('kasuga_scbc_custom_styles');
delete_site_option('kasuga_scbc_custom_styles');
delete_option('kasuga_scbc_enable_linenumbers');
delete_site_option('kasuga_scbc_enable_linenumbers');

