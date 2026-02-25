#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dupcap-installDate'
wp option delete 'dupcap_initial_save_version'
wp option delete 'dupcap-atp-notice'
wp option delete 'cpel_autopoly_installed'
wp option delete 'active_sitewide_plugins'
wp option delete 'dupcap-v'
wp option delete 'dupcap-type'
wp option delete 'dupcap-ratingDiv'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pll_duplicate_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pll_duplicate_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pll_duplicate_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pll_duplicate_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
