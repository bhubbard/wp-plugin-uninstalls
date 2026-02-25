<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('ure_users_without_role');
delete_site_transient('ure_users_without_role');
delete_transient('ure_caps_columns_quant');
delete_site_transient('ure_caps_columns_quant');
delete_transient('ure_caps_readable');
delete_site_transient('ure_caps_readable');
delete_transient('ure_show_deprecated_caps');
delete_site_transient('ure_show_deprecated_caps');

