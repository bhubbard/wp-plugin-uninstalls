<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cleancodenzexlp_customfield_name');
delete_site_option('cleancodenzexlp_customfield_name');
delete_option('cleancodenzexlp_customfield_value');
delete_site_option('cleancodenzexlp_customfield_value');
delete_option('cleancodenzexlp_notinsearch');
delete_site_option('cleancodenzexlp_notinsearch');
delete_option('cleancodenzexlp_notinsearch_only');
delete_site_option('cleancodenzexlp_notinsearch_only');

