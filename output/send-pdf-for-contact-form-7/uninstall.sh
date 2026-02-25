#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpcf7pdf_path_temp'
wp option delete 'wpcf7pdf_version'
wp option delete 'wpcf7pdf_admin_notices'

# Delete Transients
wp transient delete 'pdf_password'
wp transient delete 'pdf_name'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_cf7pdf'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_cf7pdf'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_cf7pdf'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_cf7pdf'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_cf7pdf_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_cf7pdf_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_cf7pdf_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_cf7pdf_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_cf7pdf_customtagsname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_cf7pdf_customtagsname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_cf7pdf_customtagsname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_cf7pdf_customtagsname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_cf7pdf_fields_scan'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_cf7pdf_fields_scan'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_cf7pdf_fields_scan'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_cf7pdf_fields_scan'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_cf7pdf_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_cf7pdf_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_cf7pdf_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_cf7pdf_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_form'"
