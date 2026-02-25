<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('post2pdf_conv_setting_opt');
delete_site_option('post2pdf_conv_setting_opt');
delete_option('post2pdf_conv_exc');
delete_site_option('post2pdf_conv_exc');
delete_option('post2pdf_conv_sig');
delete_site_option('post2pdf_conv_sig');
delete_option('post2pdf_conv_updated');
delete_site_option('post2pdf_conv_updated');
delete_option('post2pdf_conv_checkver_stamp');
delete_site_option('post2pdf_conv_checkver_stamp');

