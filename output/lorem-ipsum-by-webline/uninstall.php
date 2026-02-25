<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lipsum_wli');
delete_site_option('lipsum_wli');
delete_option('libw_activation_date');
delete_site_option('libw_activation_date');
delete_option('my-setting');
delete_site_option('my-setting');
delete_option('lipsum_wli_paragraphs');
delete_site_option('lipsum_wli_paragraphs');
delete_option('lipsum_wli_length');
delete_site_option('lipsum_wli_length');
delete_option('lipsum_wli_pt');
delete_site_option('lipsum_wli_pt');
delete_option('lipsum_wli_decorate');
delete_site_option('lipsum_wli_decorate');
delete_option('lipsum_wli_links');
delete_site_option('lipsum_wli_links');
delete_option('lipsum_wli_ul');
delete_site_option('lipsum_wli_ul');
delete_option('lipsum_wli_ol');
delete_site_option('lipsum_wli_ol');
delete_option('lipsum_wli_dl');
delete_site_option('lipsum_wli_dl');
delete_option('lipsum_wli_bq');
delete_site_option('lipsum_wli_bq');
delete_option('lipsum_wli_code');
delete_site_option('lipsum_wli_code');
delete_option('lipsum_wli_headers');
delete_site_option('lipsum_wli_headers');
delete_option('lipsum_wli_ac');
delete_site_option('lipsum_wli_ac');
delete_option('lipsum_wli_pr');
delete_site_option('lipsum_wli_pr');

