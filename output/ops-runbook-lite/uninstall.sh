#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'opsrblt_related_runbook_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'opsrblt_related_runbook_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'opsrblt_related_runbook_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'opsrblt_related_runbook_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'opsrblt_what_happened'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'opsrblt_what_happened'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'opsrblt_what_happened'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'opsrblt_what_happened'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'opsrblt_what_we_did'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'opsrblt_what_we_did'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'opsrblt_what_we_did'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'opsrblt_what_we_did'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'opsrblt_what_fixed_it'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'opsrblt_what_fixed_it'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'opsrblt_what_fixed_it'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'opsrblt_what_fixed_it'"
