#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'phraseanet_url'
wp option delete 'phraseanet_client_id'
wp option delete 'phraseanet_client_secret'
wp option delete 'phraseanet_callback_url'
wp option delete 'phraseanet_auth_required'
wp option delete 'phraseanet_auth_type'
wp option delete 'phraseanet_username'
wp option delete 'phraseanet_password'
wp option delete 'phraseanet_token'
wp option delete 'phraseanet_per_page_records'
wp option delete 'phraseanet_modal_bc'
wp option delete 'phraseanet_modal_fc'
wp option delete 'fs_debug_mode'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_active_plugins'
wp option delete 'fs_storage_logger'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'update_themes'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__phraseanet_client_post_collections'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__phraseanet_client_post_collections'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__phraseanet_client_post_collections'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__phraseanet_client_post_collections'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__phraseanet_client_post_static_collections'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__phraseanet_client_post_static_collections'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__phraseanet_client_post_static_collections'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__phraseanet_client_post_static_collections'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__phraseanet_client_post_subdef'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__phraseanet_client_post_subdef'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__phraseanet_client_post_subdef'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__phraseanet_client_post_subdef'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__phraseanet_client_post_query'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__phraseanet_client_post_query'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__phraseanet_client_post_query'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__phraseanet_client_post_query'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__phraseanet_client_post_facets'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__phraseanet_client_post_facets'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__phraseanet_client_post_facets'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__phraseanet_client_post_facets'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__phraseanet_client_post_rfacets'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__phraseanet_client_post_rfacets'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__phraseanet_client_post_rfacets'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__phraseanet_client_post_rfacets'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__phraseanet_client_post_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__phraseanet_client_post_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__phraseanet_client_post_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__phraseanet_client_post_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__phraseanet_client_post_auth'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__phraseanet_client_post_auth'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__phraseanet_client_post_auth'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__phraseanet_client_post_auth'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__phraseanet_client_post_preview_details'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__phraseanet_client_post_preview_details'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__phraseanet_client_post_preview_details'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__phraseanet_client_post_preview_details'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__phraseanet_client_post_ui'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__phraseanet_client_post_ui'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__phraseanet_client_post_ui'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__phraseanet_client_post_ui'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__phraseanet_client_post_debug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__phraseanet_client_post_debug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__phraseanet_client_post_debug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__phraseanet_client_post_debug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__phraseanet_client_post_gForms'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__phraseanet_client_post_gForms'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__phraseanet_client_post_gForms'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__phraseanet_client_post_gForms'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__phraseanet_client_post_grid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__phraseanet_client_post_grid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__phraseanet_client_post_grid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__phraseanet_client_post_grid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__phraseanet_client_post_downloadList'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__phraseanet_client_post_downloadList'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__phraseanet_client_post_downloadList'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__phraseanet_client_post_downloadList'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__phraseanet_client_post_permalinkList'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__phraseanet_client_post_permalinkList'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__phraseanet_client_post_permalinkList'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__phraseanet_client_post_permalinkList'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__phraseanet_client_post_enableFacets'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__phraseanet_client_post_enableFacets'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__phraseanet_client_post_enableFacets'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__phraseanet_client_post_enableFacets'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__phraseanet_client_post_masonryImageLayout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__phraseanet_client_post_masonryImageLayout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__phraseanet_client_post_masonryImageLayout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__phraseanet_client_post_masonryImageLayout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__phraseanet_client_post_asset_details_color_palette'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__phraseanet_client_post_asset_details_color_palette'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__phraseanet_client_post_asset_details_color_palette'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__phraseanet_client_post_asset_details_color_palette'"
