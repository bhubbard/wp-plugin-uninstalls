<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('glossary_index_flush_rewrite_rules');
delete_site_option('glossary_index_flush_rewrite_rules');
delete_option('glossary_index_redirect_on_activation');
delete_site_option('glossary_index_redirect_on_activation');
delete_option('glossary_index_settings');
delete_site_option('glossary_index_settings');

