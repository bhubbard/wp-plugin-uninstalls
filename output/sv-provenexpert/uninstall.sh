#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sv_proven_expert'
wp option delete 'widget_sv_provenexpert_widget'
wp option delete 'widget_block'
wp option delete 'sv_provenexpert_modules_settings_api_id'
wp option delete 'sv_provenexpert_modules_settings_api_key'
wp option delete 'sv_provenexpert_version'
wp option delete 'widget_sv_provenexpert_modules_widget'
wp option delete 'sv_provenexpert_modules_common_settings_settings_api_id'
wp option delete 'sv_provenexpert_modules_common_settings_settings_api_key'

# Delete Transients
wp transient delete 'sv_provenexpert'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sv_core_expert_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sv_core_expert_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sv_core_expert_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sv_core_expert_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
