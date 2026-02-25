#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ny_subscribe_theme_css'
wp option delete 'ny_subscribe_field_custom'
wp option delete 'ny_subscribe_ticked'
wp option delete 'links_updated_date_format'
wp option delete 'ny_subscribe_field_sub_form'
wp option delete 'ny_subscribe_css'
wp option delete 'ny_subscribe_spam_ip_list_remote'
wp option delete 'ny_subscribe_spam_ip_list_server'
wp option delete 'ny_subscribe_spam_email_list'
wp option delete 'ny_subscribe_spam_domain_list'
wp option delete 'ny_subscribe_wipe'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ny_subscribe_field_custom'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ny_subscribe_field_custom'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ny_subscribe_field_custom'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ny_subscribe_field_custom'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'NYSEmailSent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'NYSEmailSent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'NYSEmailSent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'NYSEmailSent'"
