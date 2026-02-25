<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dlwfq-archive-accordion');
delete_site_option('dlwfq-archive-accordion');
delete_option('dlwfq-archive-title');
delete_site_option('dlwfq-archive-title');
delete_option('dlwfq-total-posts-on-archive-page');
delete_site_option('dlwfq-total-posts-on-archive-page');
delete_option('dlwfq-archive-options-slug');
delete_site_option('dlwfq-archive-options-slug');
delete_option('dlwfq-plugin-v');
delete_site_option('dlwfq-plugin-v');

// Delete Transients
delete_transient('dlwfq_faqizer_activated');
delete_site_transient('dlwfq_faqizer_activated');

