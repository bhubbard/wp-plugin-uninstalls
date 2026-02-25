#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'magic_import_document_extractor_settings'
wp option delete 'magic_import_document_extractor_license_key'
wp option delete 'magic_import_document_extractor_license_email'
wp option delete 'magic_import_document_extractor_license_status'
wp option delete 'magic_import_document_extractor_credits_total'
wp option delete 'magic_import_document_extractor_credits_remaining'
wp option delete 'magic_import_document_extractor_reset_date'
wp option delete 'magic_import_document_extractor_plan_name'
wp option delete 'magic_import_document_extractor_current_usage'
wp option delete 'magic_import_document_extractor_license_tier'
wp option delete 'magic_import_document_extractor_pattern_usage'
wp option delete 'magic_import_document_extractor_form_activity'
wp option delete 'magic_import_document_extractor_last_document_credits'
wp option delete 'magic_import_document_extractor_last_usage_sync'

# Delete Transients
wp transient delete 'magic_import_document_extractor_license_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpforms'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpforms'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpforms'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpforms'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'forminator_form_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'forminator_form_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'forminator_form_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'forminator_form_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'forminator_form'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'forminator_form'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'forminator_form'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'forminator_form'"
