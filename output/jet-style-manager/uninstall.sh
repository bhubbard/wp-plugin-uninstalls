#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'jet_sm_google_fonts'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jet_sm_is_processed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jet_sm_is_processed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jet_sm_is_processed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jet_sm_is_processed'"
