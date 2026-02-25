#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nobsmv_enabled'
wp option delete 'nobsmv_custom_message'
wp option delete 'nobsmv_link_position'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nobsmv_access_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nobsmv_access_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nobsmv_access_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nobsmv_access_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nobsmv_recipient_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nobsmv_recipient_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nobsmv_recipient_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nobsmv_recipient_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nobsmv_email_headers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nobsmv_email_headers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nobsmv_email_headers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nobsmv_email_headers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nobsmv_email_attachments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nobsmv_email_attachments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nobsmv_email_attachments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nobsmv_email_attachments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nobsmv_sent_timestamp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nobsmv_sent_timestamp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nobsmv_sent_timestamp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nobsmv_sent_timestamp'"
