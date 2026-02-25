<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sendpulse_livechat_inline_js');
delete_site_option('sendpulse_livechat_inline_js');

