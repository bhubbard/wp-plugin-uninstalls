#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'use_default_media_library'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'cpt_pdf_attachment%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'cpt_pdf_attachment%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'cpt_pdf_attachment%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'cpt_pdf_attachment%'"
