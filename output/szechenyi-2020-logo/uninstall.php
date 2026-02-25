<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('szechenyi_2020_options');
delete_site_option('szechenyi_2020_options');

// Delete Transients
delete_transient('szechenyi_2020_619_review_notice');
delete_site_transient('szechenyi_2020_619_review_notice');
delete_transient('misi_szechenyi2020_css_transient');
delete_site_transient('misi_szechenyi2020_css_transient');
delete_transient('misi_szechenyi2020_html_transient');
delete_site_transient('misi_szechenyi2020_html_transient');

