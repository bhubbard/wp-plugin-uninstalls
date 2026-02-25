#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'chimpbridge_mailchimp_key'
wp option delete 'mc4wp'
wp option delete 'chimpbridge_error_notices'

# Delete Transients
wp transient delete 'chimpbridge_mailchimp_lists'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_chimpbridge_email_mailchimp_groups_%' OR option_name LIKE '_site_transient_chimpbridge_email_mailchimp_groups_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_chimpbridge_mailchimp_segments_%' OR option_name LIKE '_site_transient_chimpbridge_mailchimp_segments_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'chimpbridge_email_campaign_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'chimpbridge_email_campaign_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'chimpbridge_email_campaign_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'chimpbridge_email_campaign_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_chimpbridge_select_lists'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_chimpbridge_select_lists'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_chimpbridge_select_lists'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_chimpbridge_select_lists'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_chimpbridge_select_segments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_chimpbridge_select_segments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_chimpbridge_select_segments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_chimpbridge_select_segments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_chimpbridge_from_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_chimpbridge_from_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_chimpbridge_from_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_chimpbridge_from_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_chimpbridge_from_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_chimpbridge_from_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_chimpbridge_from_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_chimpbridge_from_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_chimpbridge_to_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_chimpbridge_to_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_chimpbridge_to_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_chimpbridge_to_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'chimpbridge_email_archive_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'chimpbridge_email_archive_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'chimpbridge_email_archive_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'chimpbridge_email_archive_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'chimpbridge_scheduled_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'chimpbridge_scheduled_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'chimpbridge_scheduled_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'chimpbridge_scheduled_email'"
