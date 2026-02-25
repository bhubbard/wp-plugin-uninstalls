#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_debug'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_updates'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_meta'"
wp option delete 'recently_activated'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_msg'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_install_data'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailchimp_campaign_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailchimp_campaign_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailchimp_campaign_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailchimp_campaign_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'vxc_mailchimp_check_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'vxc_mailchimp_check_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'vxc_mailchimp_check_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'vxc_mailchimp_check_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_raq_request'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_raq_request'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_raq_request'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_raq_request'"
