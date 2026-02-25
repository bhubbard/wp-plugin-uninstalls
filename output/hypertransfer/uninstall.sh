#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hypertransfer_page_selection'
wp option delete 'hypertransfer_total_uploaded_files'
wp option delete 'hypertransfer_remove_data_on_uninstall'
wp option delete 'hypertransfer_file_storage_limit'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'hypertransferItem_%'"
wp option delete 'hypertransfer_logo_color_orizzontale'
wp option delete 'hypertransfer_compress_file_on_server'
wp option delete 'hypertransfer_max_compress_file_on_server'
wp option delete 'hypertransfer_plugin_version'
wp option delete 'hypertransfer_logo_bianco_simbolo'
wp option delete 'hypertransfer_full_notified'
wp option delete 'hypertransfer_send_full_notification'
wp option delete 'hypertransfer_max_file_updatable'

