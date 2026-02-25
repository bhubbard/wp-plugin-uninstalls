#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'yaml_cf_schemas'
wp option delete 'yaml_cf_global_schema'
wp option delete 'yaml_cf_template_global_schemas'
wp option delete 'yaml_cf_data_object_types'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'yaml_cf_data_object_entries_%'"
wp option delete 'yaml_cf_global_data'
wp option delete 'yaml_cf_partial_data'
wp option delete 'yaml_cf_template_global_data'
wp option delete 'yaml_cf_template_settings'
wp option delete 'yaml_cf_tracked_posts'
wp option delete 'yaml_cf_partial_schemas'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_yaml_cf_data_objects_success_%' OR option_name LIKE '_site_transient_yaml_cf_data_objects_success_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_yaml_cf_data_object_success_%' OR option_name LIKE '_site_transient_yaml_cf_data_object_success_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_yaml_cf_invalid_global_schema_%' OR option_name LIKE '_site_transient_yaml_cf_invalid_global_schema_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_yaml_cf_invalid_schema_%' OR option_name LIKE '_site_transient_yaml_cf_invalid_schema_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_yaml_cf_invalid_template_global_schema_%' OR option_name LIKE '_site_transient_yaml_cf_invalid_template_global_schema_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_yaml_cf_import_error_%' OR option_name LIKE '_site_transient_yaml_cf_import_error_%'"
wp transient delete 'yaml_cf_theme_templates'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_yaml_cf_templates_%' OR option_name LIKE '_site_transient_yaml_cf_templates_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yaml_cf_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yaml_cf_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yaml_cf_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yaml_cf_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yaml_cf_schema'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yaml_cf_schema'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yaml_cf_schema'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yaml_cf_schema'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yaml_cf_use_template_global'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yaml_cf_use_template_global'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yaml_cf_use_template_global'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yaml_cf_use_template_global'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yaml_cf_use_template_global_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yaml_cf_use_template_global_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yaml_cf_use_template_global_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yaml_cf_use_template_global_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yaml_cf_imported'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yaml_cf_imported'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yaml_cf_imported'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yaml_cf_imported'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
