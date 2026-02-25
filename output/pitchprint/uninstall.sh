#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ppa_api_key'
wp option delete 'ppa_secret_key'
wp option delete 'ppa_cat_customize'
wp option delete 'ppa_email_download_link'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_w2p_set_option'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_w2p_set_option'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_w2p_set_option'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_w2p_set_option'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_w2p_required_option'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_w2p_required_option'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_w2p_required_option'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_w2p_required_option'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_w2p_pdf_download_option'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_w2p_pdf_download_option'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_w2p_pdf_download_option'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_w2p_pdf_download_option'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_w2p_use_design_preview_option'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_w2p_use_design_preview_option'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_w2p_use_design_preview_option'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_w2p_use_design_preview_option'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_w2p_display_option'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_w2p_display_option'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_w2p_display_option'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_w2p_display_option'"
