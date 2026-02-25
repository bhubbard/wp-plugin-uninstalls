#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ewmi_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ewmi_subscribed_to_mailchimp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ewmi_subscribed_to_mailchimp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ewmi_subscribed_to_mailchimp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ewmi_subscribed_to_mailchimp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ewmi_mailchimp_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ewmi_mailchimp_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ewmi_mailchimp_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ewmi_mailchimp_list'"
