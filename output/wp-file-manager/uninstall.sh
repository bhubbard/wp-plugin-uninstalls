#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'filemanager_email_verified_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'filemanager_email_address_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'verify_filemanager_fname_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'verify_filemanager_lname_%'"
wp option delete 'fm_key'
wp option delete 'wp_file_manager_settings'
wp option delete 'mk_fm_close_fm_help_c_fm'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_filemanager_cancel_lk_popup_%' OR option_name LIKE '_site_transient_filemanager_cancel_lk_popup_%'"
wp transient delete 'wp_fm_lang'
wp transient delete 'wp_fm_theme'

