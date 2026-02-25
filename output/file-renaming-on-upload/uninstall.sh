#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'frou_activated_or_updated'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_frou_original_filename'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_frou_original_filename'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_frou_original_filename'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_frou_original_filename'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpfcs_dashboard_banner_closed_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpfcs_dashboard_banner_closed_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpfcs_dashboard_banner_closed_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpfcs_dashboard_banner_closed_time'"
