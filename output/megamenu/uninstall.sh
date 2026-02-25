#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'megamenu_dismissed_notices'
wp option delete 'megamenu_install_date'
wp option delete 'megamenu_settings'
wp option delete 'megamenu_failed_to_write_css_to_filesystem'
wp option delete 'megamenu_locations'
wp option delete 'megamenu_initial_version'
wp option delete 'wbcr_clearfy_cache_options'
wp option delete 'megamenu_toggle_blocks'
wp option delete 'megamenu_version'
wp option delete 'megamenu_themes_last_updated'
wp option delete 'megamenu_multisite_share_themes'
wp option delete 'megamenu_css_last_updated'
wp option delete 'megamenu_css_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp option delete 'megamenu_themes'

# Delete Transients
wp transient delete 'megamenu_css'
wp transient delete 'megamenu_css_version'
wp transient delete 'megamenu_css_last_updated'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_megamenu_css_%' OR option_name LIKE '_site_transient_megamenu_css_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_megamenu'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_megamenu'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_megamenu'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_megamenu'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_template_type'"
