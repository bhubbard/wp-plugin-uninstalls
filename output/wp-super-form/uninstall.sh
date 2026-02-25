#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsf_contact_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsf_contact_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsf_contact_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsf_contact_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsf_contact_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsf_contact_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsf_contact_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsf_contact_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsf_contact_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsf_contact_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsf_contact_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsf_contact_message'"
