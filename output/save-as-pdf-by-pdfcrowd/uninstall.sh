#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'save_as_pdf_pdfcrowd_error_code'
wp option delete 'save-as-pdf-pdfcrowd'
wp option delete 'save-as-pdf-pdfcrowd_encryption_secret'

# Delete Transients
wp transient delete 'save_as_pdf_pdfcrowd_show_wizard'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'save_as_pdf_pdfcrowd_dismissed_upgrade'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'save_as_pdf_pdfcrowd_dismissed_upgrade'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'save_as_pdf_pdfcrowd_dismissed_upgrade'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'save_as_pdf_pdfcrowd_dismissed_upgrade'"
