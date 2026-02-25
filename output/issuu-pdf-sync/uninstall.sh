#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ips_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'issuu_pdf_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'issuu_pdf_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'issuu_pdf_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'issuu_pdf_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'issuu_pdf_username'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'issuu_pdf_username'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'issuu_pdf_username'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'issuu_pdf_username'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'issuu_pdf_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'issuu_pdf_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'issuu_pdf_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'issuu_pdf_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'disable_auto_upload'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'disable_auto_upload'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'disable_auto_upload'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'disable_auto_upload'"
