#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'elementor_viewport_lg'
wp option delete 'elementor_viewport_md'
wp option delete 'pp_override_ms'
wp option delete 'pp_elementor_modules'
wp option delete 'pp_elementor_extensions'
wp option delete 'pp_license_status'
wp option delete 'pp_review_later_date'
wp option delete 'pp_review_already_did'
wp option delete 'pp_do_not_upgrade_to_pro'
wp option delete 'pp_install_date'
wp option delete 'pp_tracking_last_send'
wp option delete 'pp_tracking_notice'
wp option delete 'pp_elementor_used_modules'
wp option delete 'pp_elementor_notused_modules'
wp option delete 'pp_plugin_activated'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pp-custom-link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pp-custom-link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pp-custom-link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pp-custom-link'"
