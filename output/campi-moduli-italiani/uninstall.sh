#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gcmi_last_update_check'
wp option delete 'gcmi_codici_catastali_remote_file_time'
wp option delete 'gcmi-formsign-css'
wp option delete 'gcmi_plugin_version'

# Clear Cron Jobs
wp cron event delete 'gcmi_check_for_remote_data_updates'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gcmi_wpcf7_enc_privKey'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gcmi_wpcf7_enc_privKey'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gcmi_wpcf7_enc_privKey'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gcmi_wpcf7_enc_privKey'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gcmi_wpcf7_enc_pubKey'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gcmi_wpcf7_enc_pubKey'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gcmi_wpcf7_enc_pubKey'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gcmi_wpcf7_enc_pubKey'"
