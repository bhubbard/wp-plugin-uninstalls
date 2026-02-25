#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gutenverse-companion-imported-options'
wp option delete 'gutenverse_companion_template_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gutenverse-global-variable-font-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gutenverse-global-variable-google-%'"
wp option delete 'gutenverse-style-cache-id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gutenverse-companion-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_companion_synced_pattern_imported'"
wp option delete 'gutenverse-companion_wizard_init_done'
wp option delete 'gutenverse-companion-promotion-notice'
wp option delete 'gutenverse-companion-promotion-demo-banner'
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_synced_pattern_imported'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_dummy_inserted'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_content_inserted'"
wp option delete 'gutenverse-companion-base-theme-notice'
wp option delete 'gutenverse-license'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wizard_setup_done'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wizard_init_done'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_lite_plus_wizard_setup_done'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_lite_plus_wizard_init_done'"

# Delete Transients
wp transient delete 'gutenverse_companion_unibiz_banner_cache'
wp transient delete 'gutenverse_wp_remote_get_status_cache'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_import_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_import_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_import_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_import_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_menu_unique_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_menu_unique_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_menu_unique_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_menu_unique_key'"
