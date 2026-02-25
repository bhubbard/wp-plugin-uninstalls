#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_je_request_votes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_je_request_votes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_je_request_votes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_je_request_votes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_je_request_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_je_request_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_je_request_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_je_request_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_je_request_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_je_request_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_je_request_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_je_request_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_je_request_voters'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_je_request_voters'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_je_request_voters'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_je_request_voters'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_je_request_submitter_ip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_je_request_submitter_ip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_je_request_submitter_ip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_je_request_submitter_ip'"
