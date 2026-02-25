#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'snillrik_settings_admintoolbar'
wp option delete 'snillrik_settings_admintoolbar_role'
wp option delete 'snillrik_settings_turnoffemail'
wp option delete 'snillrik_settings_turnoffemail_email'
wp option delete 'snillrik_settings_categorycolor'
wp option delete 'snillrik_settings_changeemail'
wp option delete 'snillrik_settings_change_name'
wp option delete 'snillrik_settings_change_email'
wp option delete 'wp_mail_from'
wp option delete 'snillrik_settings_redirectlogin'
wp option delete 'snillrik_settings_redirectlogout'
wp option delete 'snillrik_settings_redirectprofile'
wp option delete 'snillrik_settings_redirectlogin_page'
wp option delete 'snillrik_settings_redirectlogout_page'
wp option delete 'snillrik_settings_redirectprofile_page'
wp option delete 'snillrik-settings-select-eagerness'
wp option delete 'snillrik-settings-select-mode'
wp option delete 'snillrik_settings_wootocheckout'
wp option delete 'snillrik_settings_simplehoneypot'
wp option delete 'snillrik_settings_simplehoneypot_name'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'category_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'category_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'category_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'category_color'"
