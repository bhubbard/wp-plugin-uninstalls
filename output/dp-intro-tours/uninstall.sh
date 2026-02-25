#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dp_it_general_options'
wp option delete 'dpit_db_version'
wp option delete 'dp_it_text_styles_options'
wp option delete 'dpit_plugin_build_type'
wp option delete 'dp_it_labeling_options'
wp option delete 'active_sitewide_plugins'
wp option delete 'cptui_post_types'
wp option delete 'cptui_taxonomies'
wp option delete 'acf_version'

# Delete Transients
wp transient delete 'acf_deactivated_notice_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_acf_network_upgrade_needed_%' OR option_name LIKE '_site_transient_acf_network_upgrade_needed_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_transient_ajax_%' OR option_name LIKE '_site_transient_transient_ajax_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpit_step_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpit_step_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpit_step_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpit_step_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpit_steps_url_relative'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpit_steps_url_relative'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpit_steps_url_relative'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpit_steps_url_relative'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpit_steps_url_unified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpit_steps_url_unified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpit_steps_url_unified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpit_steps_url_unified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dp_it_admin_color_v6'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dp_it_admin_color_v6'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dp_it_admin_color_v6'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dp_it_admin_color_v6'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'acf_user_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'acf_user_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'acf_user_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'acf_user_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rule'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rule'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rule'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rule'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'allorany'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'allorany'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'allorany'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'allorany'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hide_on_screen'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hide_on_screen'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hide_on_screen'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hide_on_screen'"
