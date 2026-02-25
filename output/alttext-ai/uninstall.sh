#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'atai_woo_marketplace'
wp option delete 'atai_api_key'
wp option delete 'atai_network_api_key'
wp option delete 'atai_network_all_settings'
wp option delete 'atai_lang'
wp option delete 'atai_model_name'
wp option delete 'atai_force_lang'
wp option delete 'atai_update_title'
wp option delete 'atai_update_caption'
wp option delete 'atai_update_description'
wp option delete 'atai_enabled'
wp option delete 'atai_skip_filenotfound'
wp option delete 'atai_keywords'
wp option delete 'atai_keywords_title'
wp option delete 'atai_admin_capability'
wp option delete 'atai_ecomm'
wp option delete 'atai_ecomm_title'
wp option delete 'atai_public'
wp option delete 'atai_alt_prefix'
wp option delete 'atai_alt_suffix'
wp option delete 'atai_gpt_prompt'
wp option delete 'atai_type_extensions'
wp option delete 'atai_excluded_post_types'
wp option delete 'atai_no_credit_warning'
wp option delete 'atai_bulk_refresh_overwrite'
wp option delete 'atai_bulk_refresh_external'
wp option delete 'atai_refresh_src_attr'
wp option delete 'atai_wp_generate_metadata'
wp option delete 'atai_timeout'
wp option delete 'atai_network_settings'
wp option delete 'atai_network_hide_credits'
wp option delete 'atai_error_logs'
wp option delete 'atai_csv_import_lang'
wp option delete 'atai_db_version'
wp option delete 'elementor_version'

# Delete Transients
wp transient delete 'atai_show_setup_notice'
wp transient delete 'atai_insufficient_credits'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_alttext_bulk_select_generate_%' OR option_name LIKE '_site_transient_alttext_bulk_select_generate_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_atai_url_access_suggestion_%' OR option_name LIKE '_site_transient_atai_url_access_suggestion_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_atai_bulk_skip_reasons_%' OR option_name LIKE '_site_transient_atai_bulk_skip_reasons_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_alttext_bulk_select_generate_redirect_%' OR option_name LIKE '_site_transient_alttext_bulk_select_generate_redirect_%'"
wp transient delete 'bulk_generate_alt'
wp transient delete 'atai_enrich_post_content_success'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'amazonS3_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'amazonS3_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'amazonS3_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'amazonS3_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cloudinary_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cloudinary_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cloudinary_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cloudinary_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wds_focus-keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wds_focus-keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wds_focus-keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wds_focus-keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'as3cf_filesize_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'as3cf_filesize_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'as3cf_filesize_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'as3cf_filesize_total'"
