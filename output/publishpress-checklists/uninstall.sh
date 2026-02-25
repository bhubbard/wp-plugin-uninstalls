#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'publishpress_checklists_checklists_options'
wp option delete 'publishpress_checklists_settings_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"
wp option delete 'classic-editor-replace'
wp option delete 'publishpress_checklist_options'
wp option delete 'wpb_js_gutenberg_disable'
wp option delete 'ppch_activated'
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'ppch_reset_labels_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_caption'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_caption'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_caption'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_caption'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_content_score'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_content_score'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_content_score'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_content_score'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_linkdex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_linkdex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_linkdex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_linkdex'"
