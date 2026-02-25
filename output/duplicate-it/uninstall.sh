#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'post_duplicate_it_title_prefix'
wp option delete 'post_duplicate_it_title_suffix'
wp option delete 'post_duplicate_it_status'
wp option delete 'post_duplicate_it_enable_type'
wp option delete 'post_duplicate_it_redirect_link'
wp option delete 'post_duplicate_it_role_allowed'
wp option delete 'duplicate_do_activation_redirect'
wp option delete 'duplicate_it_plugin_rated'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'duplicate_counter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'duplicate_counter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'duplicate_counter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'duplicate_counter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_template_type'"
