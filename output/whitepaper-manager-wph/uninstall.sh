#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pprwph_options_changed'
wp option delete 'pprwph_form_changed'
wp option delete 'pprwph_options_remove'
wp option delete 'whitepaper-manager-wph'
wp option delete 'pprwph_title'
wp option delete 'pprwph_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pprwph_section_parent_check'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pprwph_section_parent_check'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pprwph_section_parent_check'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pprwph_section_parent_check'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pprwph_section_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pprwph_section_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pprwph_section_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pprwph_section_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pprwph_section_publish'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pprwph_section_publish'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pprwph_section_publish'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pprwph_section_publish'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pprwph_section_link_check'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pprwph_section_link_check'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pprwph_section_link_check'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pprwph_section_link_check'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pprwph_section_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pprwph_section_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pprwph_section_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pprwph_section_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'type'"
