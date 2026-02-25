#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pcr_feed_options'
wp option delete 'pcrecruiter_feed_options'
wp option delete 'pcrecruiter_fulltext_index_error'
wp option delete 'pcrecruiter_deactivation_actions'
wp option delete 'global_template_hash'
wp option delete 'pcrecruiter_seo_enable_overrides'
wp option delete 'pcrecruiter_job_default_og_image'
wp option delete 'pcrecruiter_seo_use_pcr_logos'
wp option delete 'result_template'
wp option delete 'search_template'
wp option delete 'sort_template'
wp option delete 'global_baseurl'
wp option delete 'global_databaseid'
wp option delete 'global_radius_language'
wp option delete 'global_search_metafields'
wp option delete 'global_result_metafields'
wp option delete 'global_sort_field'
wp option delete 'global_result_showjobs'
wp option delete 'global_result_resultsperpage'
wp option delete 'global_result_allowBlankSearches'
wp option delete 'global_result_bootstrapSize'
wp option delete 'global_message_intro'
wp option delete 'global_message_nojobfound'
wp option delete 'pcr_state_dropdown_uses_split_codes'
wp option delete 'pcrecruiter_schema_mapping'
wp option delete 'wpseo_titles'

# Delete Transients
wp transient delete 'wp-cron-test-ok'
wp transient delete 'pcr_job_field_list'
wp transient delete 'pcr_internal_job_ids'

# Clear Cron Jobs
wp cron event delete 'pcr_feed'
wp cron event delete 'pcrecruiter_feed'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pcr_schema_mapper_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pcr_schema_mapper_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pcr_schema_mapper_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pcr_schema_mapper_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '[[baseurl]]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '[[baseurl]]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '[[baseurl]]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '[[baseurl]]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '[[databaseid]]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '[[databaseid]]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '[[databaseid]]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '[[databaseid]]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pcr_expired'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pcr_expired'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pcr_expired'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pcr_expired'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '[[position.city]]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '[[position.city]]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '[[position.city]]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '[[position.city]]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '[[position.state]]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '[[position.state]]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '[[position.state]]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '[[position.state]]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '[[position.position_id]]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '[[position.position_id]]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '[[position.position_id]]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '[[position.position_id]]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '[[position.last_modified]]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '[[position.last_modified]]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '[[position.last_modified]]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '[[position.last_modified]]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pcr_expired_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pcr_expired_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pcr_expired_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pcr_expired_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '[[position.status]]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '[[position.status]]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '[[position.status]]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '[[position.status]]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '[[position.currency_type]]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '[[position.currency_type]]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '[[position.currency_type]]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '[[position.currency_type]]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '[[position.date_posted]]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '[[position.date_posted]]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '[[position.date_posted]]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '[[position.date_posted]]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '[[stat_counter]]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '[[stat_counter]]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '[[stat_counter]]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '[[stat_counter]]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '[[position.schema]]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '[[position.schema]]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '[[position.schema]]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '[[position.schema]]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '[[position.job_id]]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '[[position.job_id]]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '[[position.job_id]]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '[[position.job_id]]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '[[position.apply_url]]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '[[position.apply_url]]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '[[position.apply_url]]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '[[position.apply_url]]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '[[position.apply_method]]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '[[position.apply_method]]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '[[position.apply_method]]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '[[position.apply_method]]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '[[position.job_title]]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '[[position.job_title]]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '[[position.job_title]]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '[[position.job_title]]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '[[position.job_type]]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '[[position.job_type]]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '[[position.job_type]]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '[[position.job_type]]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '[[position.salary_desired]]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '[[position.salary_desired]]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '[[position.salary_desired]]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '[[position.salary_desired]]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '[[position.upper_salary]]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '[[position.upper_salary]]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '[[position.upper_salary]]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '[[position.upper_salary]]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '[[position.city_state]]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '[[position.city_state]]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '[[position.city_state]]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '[[position.city_state]]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '[[position.country]]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '[[position.country]]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '[[position.country]]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '[[position.country]]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '[[company.company_name]]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '[[company.company_name]]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '[[company.company_name]]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '[[company.company_name]]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '[[position.summary]]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '[[position.summary]]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '[[position.summary]]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '[[position.summary]]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '[[position.job_description]]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '[[position.job_description]]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '[[position.job_description]]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '[[position.job_description]]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '[[position.position_logo]]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '[[position.position_logo]]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '[[position.position_logo]]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '[[position.position_logo]]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '[[company.company_logo]]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '[[company.company_logo]]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '[[company.company_logo]]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '[[company.company_logo]]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_opengraph-title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_opengraph-title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_opengraph-title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_opengraph-title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_opengraph-description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_opengraph-description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_opengraph-description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_opengraph-description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_twitter-title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_twitter-title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_twitter-title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_twitter-title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_twitter-description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_twitter-description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_twitter-description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_twitter-description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_opengraph-image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_opengraph-image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_opengraph-image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_opengraph-image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_twitter-image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_twitter-image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_twitter-image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_twitter-image'"
