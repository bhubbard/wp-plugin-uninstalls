#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pdf_email_address'
wp option delete 'pdf_email_post_types'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pdf_email_on_save_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pdf_email_on_save_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pdf_email_on_save_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pdf_email_on_save_status'"
