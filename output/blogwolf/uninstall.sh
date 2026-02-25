#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'blogwolf_connected'
wp option delete 'blogwolf_api_url'
wp option delete 'blogwolf_api_tokens'
wp option delete 'blogwolf_consent_given'
wp option delete 'blogwolf_session_data'
wp option delete 'blogwolf_login_token'

# Delete Transients
wp transient delete 'blogwolf_posts_list'
wp transient delete 'blogwolf_pages_list'
wp transient delete 'blogwolf_categories_list'
wp transient delete 'blogwolf_activation_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_blogwolf_meta_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_blogwolf_meta_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_blogwolf_meta_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_blogwolf_meta_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_blogwolf_meta_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_blogwolf_meta_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_blogwolf_meta_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_blogwolf_meta_description'"
