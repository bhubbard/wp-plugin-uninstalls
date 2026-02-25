#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'email_options'
wp option delete 'email_fields'
wp option delete 'email_contenttype'
wp option delete 'email_snippet'
wp option delete 'email_interval'
wp option delete 'email_multiple'
wp option delete 'email_imageverify'
wp option delete 'email_template_title'
wp option delete 'email_template_subtitle'
wp option delete 'email_template_subject'
wp option delete 'email_template_body'
wp option delete 'email_template_bodyalt'
wp option delete 'email_template_sentsuccess'
wp option delete 'email_template_sentfailed'
wp option delete 'email_template_error'
wp option delete 'stats_display'
wp option delete 'stats_mostlimit'
wp option delete 'email_smtp'
wp option delete 'email_mailer'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp-email-remark'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp-email-remark'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp-email-remark'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp-email-remark'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp-email-title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp-email-title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp-email-title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp-email-title'"
