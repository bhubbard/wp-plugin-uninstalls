<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('projectagora_option__htscript_url');
delete_site_option('projectagora_option__htscript_url');
delete_option('projectagora_option__notify_support_consent');
delete_site_option('projectagora_option__notify_support_consent');

