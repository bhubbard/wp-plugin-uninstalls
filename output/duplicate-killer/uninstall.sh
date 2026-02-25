#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'CF7_page'
wp option delete 'Forminator_page'
wp option delete 'WPForms_page'
wp option delete 'Breakdance_page'
wp option delete 'Elementor_page'
wp option delete 'Formidable_page'
wp option delete 'NinjaForms_page'
wp option delete 'DuplicateKillerSettings'
wp option delete 'duplicateKiller_duplicates_blocked_count'
wp option delete 'duplicateKiller_review_milestones_dismissed'
wp option delete 'forminator_page'
wp option delete 'active_sitewide_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_breakdance_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_breakdance_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_breakdance_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_breakdance_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
