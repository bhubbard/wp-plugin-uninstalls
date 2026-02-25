#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gutenify_global_style'
wp option delete 'gutenify_site_options'
wp option delete 'gutenify_settings'
wp option delete 'downloaded_font_files'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_site_options'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_admin_global_style'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_global_style'"

# Delete Transients
wp transient delete 'global_styles'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_global_styles_%' OR option_name LIKE '_site_transient_global_styles_%'"
wp transient delete 'gutenberg_global_styles'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_gutenberg_global_styles_%' OR option_name LIKE '_site_transient_gutenberg_global_styles_%'"
wp transient delete 'gutenify_remote_templates'
wp transient delete 'gutenify_remote_template_kits'
wp transient delete 'gutenify_demo_categories'
wp transient delete 'gutenify_demo_import_list'
wp transient delete '_transient_pt_importer_data'

# Clear Cron Jobs
wp cron event delete 'delete_fonts_folder'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_demo_imported'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_demo_imported'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_demo_imported'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_demo_imported'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_demo_imported_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_demo_imported_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_demo_imported_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_demo_imported_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kit_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kit_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kit_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kit_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kit_templates'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kit_templates'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kit_templates'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kit_templates'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kit_parts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kit_parts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kit_parts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kit_parts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kit_navigations'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kit_navigations'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kit_navigations'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kit_navigations'"
