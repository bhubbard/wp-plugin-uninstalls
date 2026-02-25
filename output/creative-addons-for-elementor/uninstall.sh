#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'crel_version_first'
wp option delete 'active_sitewide_plugins'
wp option delete 'crel_version'
wp option delete 'crel_preset_settings'
wp option delete 'crel_error_log'
wp option delete 'crel_long_notices'
wp option delete 'crel_one_time_notices'
wp option delete 'crel_show_upgrade_message'
wp option delete 'elementor_disable_color_schemes'
wp option delete 'elementor_disable_typography_schemes'

# Delete Transients
wp transient delete '_crel_plugin_installed'
wp transient delete '_crel_plugin_activated'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
