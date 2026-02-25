#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bdt_biggopti_dismissals'
wp option delete 'bdtsaa_active_modules'
wp option delete 'bdtsaa_security_logs'
wp option delete 'bdtsaa_settings'
wp option delete 'bdtsaa_version'

# Delete Transients
wp transient delete 'bdtsaa_welcome_screen_activation_redirect'
wp transient delete 'bdtsaa_pro_features_reset'
wp transient delete 'bdtsaa_pro_deactivated'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_bdtsaa_login_attempts_%' OR option_name LIKE '_site_transient_bdtsaa_login_attempts_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_bdtsaa_captcha_%' OR option_name LIKE '_site_transient_bdtsaa_captcha_%'"
wp transient delete 'bdtsaa_premium_active'

# Clear Cron Jobs
wp cron event delete 'bdtsaa_revision_cleanup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'admin_notes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'admin_notes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'admin_notes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'admin_notes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bdtsaa_external_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bdtsaa_external_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bdtsaa_external_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bdtsaa_external_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bdtsaa_external_url_new_tab'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bdtsaa_external_url_new_tab'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bdtsaa_external_url_new_tab'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bdtsaa_external_url_new_tab'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bdtsaa_menu_item_new_tab'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bdtsaa_menu_item_new_tab'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bdtsaa_menu_item_new_tab'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bdtsaa_menu_item_new_tab'"
