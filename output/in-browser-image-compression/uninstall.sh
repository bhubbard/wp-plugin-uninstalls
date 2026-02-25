#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'ibic_compatibility_admin_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ibic_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ibic_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ibic_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ibic_error'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ibic_processed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ibic_processed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ibic_processed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ibic_processed'"
