#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'google_maps_api_key'
wp option delete 'tt_font_theme_options'
wp option delete 'stylepress_purchases'
wp option delete 'dtbaker-elementor'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_import_style_%' OR option_name LIKE '_site_transient_import_style_%'"
wp transient delete 'stylepressimportpostids'
wp transient delete 'stylepresspostorphans'
wp transient delete 'stylepress_downloadable'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dtbaker_is_component'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dtbaker_is_component'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dtbaker_is_component'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dtbaker_is_component'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_displaytype'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_displaytype'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_displaytype'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_displaytype'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_slideout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_slideout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_slideout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_slideout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_menu_item_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_menu_item_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_menu_item_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_menu_item_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dtbaker_style'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dtbaker_style'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dtbaker_style'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dtbaker_style'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stylepress_advanced'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stylepress_advanced'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stylepress_advanced'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stylepress_advanced'"
