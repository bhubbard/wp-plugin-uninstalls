#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'widgetopts_editor_cached'
wp option delete 'sidebars_widgets'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp option delete 'widgetopts_installDate'
wp option delete 'widgetopts_RatingDiv'
wp option delete 'widgetopts_free_license'
wp option delete 'widgetopts_settings'
wp option delete 'widgetopts_tabmodule-settings'
wp option delete 'widgetopts_tabmodule-visibility'
wp option delete 'widgetopts_tabmodule-devices'
wp option delete 'widgetopts_tabmodule-alignment'
wp option delete 'widgetopts_tabmodule-hide_title'
wp option delete 'widgetopts_tabmodule-classes'
wp option delete 'widgetopts_tabmodule-logic'
wp option delete 'widgetopts_tabmodule-siteorigin'
wp option delete 'widgetopts_tabmodule-search'
wp option delete 'widgetopts_tabmodule-move'
wp option delete 'widgetopts_tabmodule-elementor'
wp option delete 'widgetopts_tabmodule-widget_area'
wp option delete 'widgetopts_tabmodule-import_export'
wp option delete 'widgetopts_tabmodule-beaver'
wp option delete 'widgetopts_tabmodule-acf'
wp option delete 'widgetopts_tabmodule-state'
wp option delete 'widgetopts_tabmodule-classic_widgets_screen'
wp option delete 'widgetopts_tabmodule-hide_page_and_post_block'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widgetopts_tabmodule-%'"
wp option delete 'widgetopts_license_keys'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_key'"
wp option delete 'widgetopts_upgrade'
wp option delete 'widgetopts_global_taxonomies'
wp option delete 'widgetopts_global_all_pages'
wp option delete 'widgetopts_global_categories'
wp option delete 'Activated_Plugin'
wp option delete '_widgetopts_default_registered_'
wp option delete 'extwopts_class_settings'
wp option delete 'widgetopts_removed_global_pages'
wp option delete 'widgetopts_global_pages'
wp option delete 'widgetopts_global_types'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'extwopts_taxonomy_settings'

# Delete Transients
wp transient delete 'widgetopts_tabs_transient'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_widgetopts_taxonomy_%' OR option_name LIKE '_site_transient_widgetopts_taxonomy_%'"

