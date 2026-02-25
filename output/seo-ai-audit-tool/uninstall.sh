#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'seoaudp_openai_model'
wp option delete 'seoaudp_needs_backlinks_reimport'
wp option delete 'seoaudp_ahrefs_backlinks_last_import'
wp option delete 'seoaudp_backlinks_import_db_version'
wp option delete 'seoaudp_branded_keywords'
wp option delete 'seoaudp_gsc_last_import'
wp option delete 'seoaudp_ahrefs_last_import'
wp option delete 'seoaudp_gsc_queries_last_import'
wp option delete 'seoaudp_openai_api_key'
wp option delete 'seoaudp_business_name'
wp option delete 'seoaudp_website_url'
wp option delete 'seoaudp_about_website'
wp option delete 'seoaudp_business_country'
wp option delete 'seoaudp_business_state'
wp option delete 'seoaudp_business_city'
wp option delete 'seoaudp_debug_enabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'seoaudp_%'"
wp option delete 'seo_audit_pro_documents_key'
wp option delete 'seo_audit_pro_documents_status'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'seoaudp_rejected_keywords_%'"
wp option delete 'SEOAUDP_DB_VERSION'
wp option delete 'seoaudp_first_activation'

# Delete Transients
wp transient delete 'seoaudp_gsc_processed_data'
wp transient delete 'seoaudp_ahrefs_import_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_seoaudp_ahrefs_processed_%' OR option_name LIKE '_site_transient_seoaudp_ahrefs_processed_%'"
wp transient delete 'seoaudp_ahrefs_processed_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_seoaudp_ahrefs_import_meta_%' OR option_name LIKE '_site_transient_seoaudp_ahrefs_import_meta_%'"
wp transient delete 'seoaudp_ahrefs_import_meta'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_seoaudp_ahrefs_validation_errors_%' OR option_name LIKE '_site_transient_seoaudp_ahrefs_validation_errors_%'"
wp transient delete 'seoaudp_ahrefs_validation_errors'
wp transient delete 'seoaudp_gsc_queries_processed_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_yoast_wpseo_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_yoast_wpseo_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_yoast_wpseo_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_yoast_wpseo_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seoaudp_main_focus_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seoaudp_main_focus_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seoaudp_main_focus_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seoaudp_main_focus_keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seopress_titles_desc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seopress_titles_desc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seopress_titles_desc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seopress_titles_desc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_genesis_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_genesis_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_genesis_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_genesis_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seoaudp_meta_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seoaudp_meta_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seoaudp_meta_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seoaudp_meta_description'"
