<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_capusta_log_file_name');
delete_site_option('wc_capusta_log_file_name');
delete_option('wc_capusta_last_settings_update_version');
delete_site_option('wc_capusta_last_settings_update_version');
delete_option('WC_Capusta_last_settings_update_version');
delete_site_option('WC_Capusta_last_settings_update_version');

