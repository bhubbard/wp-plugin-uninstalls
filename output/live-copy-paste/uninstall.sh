#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lcp_enable_magic_copy_btn_specific_section'
wp option delete 'lcp_enable_copy_paste_btn'
wp option delete 'lcp_enable_magic_copy_btn'
wp option delete 'bdt_enable_duplicator'
wp option delete 'element_pack_other_settings'
wp option delete 'lcp_enable_magic_copy_btn_login_user'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_template_type'"
