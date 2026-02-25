#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_enable_reviews'
wp option delete 'scpt_core_tabs'
wp option delete 'active_sitewide_plugins'
wp option delete 'acf_first_activated_version'
wp option delete 'acf_version'
wp option delete 'acf_escaped_html_notice_dismissed'
wp option delete 'cptui_post_types'
wp option delete 'cptui_taxonomies'
wp option delete 'acf_escaped_html_log'
wp option delete 'acf_will_escape_html_log'

# Delete Transients
wp transient delete 'scpt_products_with_attributes_count'
wp transient delete 'sdpt-activado'
wp transient delete 'acf_deactivated_notice_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_acf_network_upgrade_needed_%' OR option_name LIKE '_site_transient_acf_network_upgrade_needed_%'"

# Clear Cron Jobs
wp cron event delete 'acf_update_site_health_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'scpt_is_core'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'scpt_is_core'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'scpt_is_core'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'scpt_is_core'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'scpt_activar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'scpt_activar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'scpt_activar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'scpt_activar'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_acf_changed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_acf_changed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_acf_changed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_acf_changed'"
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
