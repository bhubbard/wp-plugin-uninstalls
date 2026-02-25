#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'blossomthemes_email_newsletter_settings'
wp option delete 'bten_aw_auth_info'
wp option delete 'bten_sib_temp_list'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_bten_sib_list_%' OR option_name LIKE '_site_transient_bten_sib_list_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_sib_attributes_%' OR option_name LIKE '_site_transient_sib_attributes_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bten_api_update_admin_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bten_api_update_admin_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bten_api_update_admin_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bten_api_update_admin_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'blossomthemes_email_newsletter_setting'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'blossomthemes_email_newsletter_setting'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'blossomthemes_email_newsletter_setting'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'blossomthemes_email_newsletter_setting'"
