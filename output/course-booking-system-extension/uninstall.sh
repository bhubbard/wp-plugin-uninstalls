#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cbse_coach_mail_options'
wp option delete 'cbse_auto_print_options'
wp option delete 'cbse_general_options'
wp option delete 'cbse_pdf_header_options'
wp option delete 'cbse_options'
wp option delete 'cbse_covid19_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cbse_auto_print_mail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cbse_auto_print_mail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cbse_auto_print_mail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cbse_auto_print_mail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cbse_auto_print_folder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cbse_auto_print_folder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cbse_auto_print_folder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cbse_auto_print_folder'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cbse-api-token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cbse-api-token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cbse-api-token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cbse-api-token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cbse-auto-inform'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cbse-auto-inform'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cbse-auto-inform'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cbse-auto-inform'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cbse-auto-print'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cbse-auto-print'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cbse-auto-print'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cbse-auto-print'"
