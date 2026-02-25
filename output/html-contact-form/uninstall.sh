#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'HTML_CF_code'
wp option delete 'html_CF_Email'
wp option delete 'html_form_install_date'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'html_contact_ignore_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'html_contact_ignore_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'html_contact_ignore_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'html_contact_ignore_notice'"
