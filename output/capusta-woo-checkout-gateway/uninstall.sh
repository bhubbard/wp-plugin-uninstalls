#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_capusta_log_file_name'
wp option delete 'wc_capusta_last_settings_update_version'
wp option delete 'WC_Capusta_last_settings_update_version'

