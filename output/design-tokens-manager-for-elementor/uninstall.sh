#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'elementor_scheme_color'
wp option delete 'elementor_scheme_typography'
wp option delete 'edtm_pending_kit_sync'
wp option delete 'elementor_active_kit'

# Delete Transients
wp transient delete 'edtm_sync_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'edtm_last_active_section'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'edtm_last_active_section'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'edtm_last_active_section'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'edtm_last_active_section'"
