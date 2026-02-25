#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'quickcreator_api_access_key'
wp option delete 'quickcreator_connection_details'
wp option delete 'quickcreator_version'
wp option delete 'quickcreator_auth_user'
wp option delete 'elementor_cpt_support'
wp option delete 'megamenu_settings'
wp option delete 'theplus_options'

# Delete Transients
wp transient delete 'quickcreator_connection_token'
wp transient delete 'quickcreator_installing'
wp transient delete '_quickcreator_activation_redirect'
wp transient delete 'quickcreator_updated'
wp transient delete 'megamenu_failed_to_write_css_to_filesystem'
wp transient delete 'quickcreatorblog_connection_token'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quickcreator_draft_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quickcreator_draft_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quickcreator_draft_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quickcreator_draft_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quickcreator_permalink_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quickcreator_permalink_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quickcreator_permalink_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quickcreator_permalink_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quickcreator_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quickcreator_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quickcreator_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quickcreator_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quickcreator_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quickcreator_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quickcreator_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quickcreator_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quickcreator_scrape_ready'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quickcreator_scrape_ready'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quickcreator_scrape_ready'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quickcreator_scrape_ready'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quickcreator_last_post_update'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quickcreator_last_post_update'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quickcreator_last_post_update'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quickcreator_last_post_update'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quickcreator_last_post_update_direction'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quickcreator_last_post_update_direction'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quickcreator_last_post_update_direction'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quickcreator_last_post_update_direction'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__qucikcreator_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__qucikcreator_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__qucikcreator_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__qucikcreator_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quickcreator_file_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quickcreator_file_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quickcreator_file_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quickcreator_file_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
