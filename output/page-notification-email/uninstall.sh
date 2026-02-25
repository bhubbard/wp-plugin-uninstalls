#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pagenoemail_enabled_post_types'
wp option delete 'pagenoemail_email_subject'
wp option delete 'pagenoemail_email_message'
wp option delete 'pagenoemail_bcc_address'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pagenoemail_notification_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pagenoemail_notification_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pagenoemail_notification_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pagenoemail_notification_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pagenoemail_custom_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pagenoemail_custom_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pagenoemail_custom_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pagenoemail_custom_message'"
