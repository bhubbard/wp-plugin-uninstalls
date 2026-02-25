#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'preview_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'preview_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'preview_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'preview_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ae_preview_author'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ae_preview_author'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ae_preview_author'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ae_preview_author'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uael-social-share-count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uael-social-share-count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uael-social-share-count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uael-social-share-count'"
