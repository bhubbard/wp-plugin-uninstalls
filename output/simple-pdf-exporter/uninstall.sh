#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'spe_pdfhandler'
wp option delete '_transient_timeout_simple_pdf_export_posts'

# Delete Transients
wp transient delete 'simple_pdf_export_posts'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pdf_export_page_no'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pdf_export_page_no'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pdf_export_page_no'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pdf_export_page_no'"
