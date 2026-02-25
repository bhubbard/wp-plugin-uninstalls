#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tainacan_option_facets_enable_filter_items'
wp option delete 'tainacan_option_facets_enable_count_items'
wp option delete 'tnc_option_recaptch_secret_key'
wp option delete 'tainacan_admin_ui_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'tnc_transient_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'tainacan_bulk_%'"
wp option delete 'tainacan_option_index_pdf_content'
wp option delete 'tainacan_option_enable_default_search_engine'
wp option delete 'tainacan_option_override_item_single_template'
wp option delete 'tainacan_option_override_taxonomy_single_template'
wp option delete 'tainacan_option_override_collection_items_archive_template'
wp option delete 'tainacan_option_override_taxonomy_term_items_archive_template'
wp option delete 'tainacan_option_override_repository_items_archive_template'
wp option delete 'tainacan_option_default_view_mode'
wp option delete 'tainacan_option_enabled_view_modes'
wp option delete 'tainacan_option_default_order'
wp option delete 'tainacan_option_default_orderby'
wp option delete 'tainacan_option_enable_item_link_query_params'
wp option delete 'tainacan_option_search_results_per_page'
wp option delete 'tnc_option_recaptch_site_key'
wp option delete 'tainacan_dashboard_disabled_cards'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'tainacan_option_%'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_tnc_transient_submission_%' OR option_name LIKE '_site_transient_tnc_transient_submission_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_new_terms_ids' OR option_name LIKE '_site_transient_%_new_terms_ids'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'log_diffs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'log_diffs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'log_diffs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'log_diffs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_user_edit_lastr'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_user_edit_lastr'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_user_edit_lastr'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_user_edit_lastr'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'collection_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'collection_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'collection_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'collection_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'metadata_mapping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'metadata_mapping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'metadata_mapping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'metadata_mapping'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'metadata_section_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'metadata_section_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'metadata_section_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'metadata_section_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'metadata_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'metadata_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'metadata_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'metadata_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_option_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_option_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_option_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_option_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'metadata_type_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'metadata_type_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'metadata_type_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'metadata_type_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tainacan_prefs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tainacan_prefs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tainacan_prefs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tainacan_prefs'"
