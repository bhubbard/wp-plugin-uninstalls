#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'seokey_option_first_wizard_seokey_notice_wizard'
wp option delete 'seokey_audit_global_issues_count_now'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'seokey-metatitle-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'seokey-metadesc-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'seokey-content_visibility-%'"
wp option delete 'seokey_audit_global_data_score_now'
wp option delete 'seokey_audit_content_count '
wp option delete 'seokey_audit_tasks_list_done'
wp option delete 'seokey_option_audit_stop'
wp option delete 'seokey_audit_global_last_update'
wp option delete 'seokey_audit_content_count'
wp option delete 'seokey_audit_global_url_count'
wp option delete 'seokey_audit_global_url_count_withoutinfo'
wp option delete 'seokey_audit_global_task_max_score'
wp option delete 'seokey_audit_tasks_list_done_since_lasttime'
wp option delete 'seokey_audit_running_401_test'
wp option delete 'seokey_audit_running'
wp option delete 'seokey_audit_content_list'
wp option delete 'seokey_audit_tasks_count_types'
wp option delete 'seokey_option_audit_stop '
wp option delete 'seokey_audit_global_issues_count_old'
wp option delete 'seokey_audit_global_data_score_old'
wp option delete 'seokey-gsc-site'
wp option delete 'seokey_audit_score_count_url_with_traffic'
wp option delete 'seokey-field-tools-htpasslogin'
wp option delete 'seokey-field-tools-htpasspass'
wp option delete 'seokey_sitemap_creation'
wp option delete 'seokey_import_from'
wp option delete 'rank-math-options-titles'
wp option delete 'wpseo_titles'
wp option delete 'rank-math-options-general'
wp option delete 'seokey-field-metas-category_base'
wp option delete 'seokey-field-search-console-searchconsole-google-verification-code'
wp option delete 'seokey-field-metas-metatitle'
wp option delete 'seokey-field-metas-metadesc'
wp option delete 'seokey-field-cct-pages'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'seokey-field-cct-taxonomy-choice-%'"
wp option delete 'seokey-field-cct-cpt'
wp option delete 'seokey-field-cct-taxo'
wp option delete 'seokey-field-schemaorg-schema-person-image'
wp option delete 'seokey-field-schemaorg-schema-person'
wp option delete 'seokey-field-schemaorg-context'
wp option delete 'seokey-field-schemaorg-schema-local_business'
wp option delete 'seokey-field-schemaorg-schema-local_business-image'
wp option delete 'seokey-field-schemaorg-schema-local_business-pricing'
wp option delete 'seokey-field-schemaorg-schema-local_business-openinghoursspecification'
wp option delete 'seopress_titles_option_name'
wp option delete 'seopress_advanced_option_name'
wp option delete 'seopress_social_option_name'
wp option delete 'seokey-field-schemaorg-schema-person-sameas'
wp option delete 'wpseo'
wp option delete 'wpseo_taxonomy_meta'
wp option delete 'seokey-gsc-last-api-call'
wp option delete 'seokey_redirection_notice'
wp option delete 'seokey_option_redirections_guess'
wp option delete 'seokey_option_sitemap_list'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'seokey-%'"
wp option delete 'seokey_admin_content_watcher_known'
wp option delete 'seo-key-delete-data'
wp option delete 'recently_activated'
wp option delete 'seokey_version'
wp option delete 'seokey-field-seooptimizations-opengraph'
wp option delete 'seokey_option_current_version'
wp option delete 'seokey-gsc-site-disconnected'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_batch'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'seokey-field-%'"
wp option delete 'active_sitewide_plugins'
wp option delete 'seokey_option_flush_rewrite'
wp option delete 'seokey-activation-deactivation-process'
wp option delete 'polylang'

# Delete Transients
wp transient delete 'settings_errors'
wp transient delete 'seokey_transient_audit_issues_type_count'
wp transient delete 'seokey_admin_401_checker'
wp transient delete 'seokey_transient_admin_content_watcher'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Clear Cron Jobs
wp cron event delete 'do_pings'
wp cron event delete 'seokey_background-seokey_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'seokey-settings-tab'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'seokey-settings-tab'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'seokey-settings-tab'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'seokey-settings-tab'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'seokey-audit-tab'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'seokey-audit-tab'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'seokey-audit-tab'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'seokey-audit-tab'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'seokey-content_visibility'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'seokey-content_visibility'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'seokey-content_visibility'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'seokey-content_visibility'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'seokey-metatitle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'seokey-metatitle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'seokey-metatitle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'seokey-metatitle'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'seokey-metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'seokey-metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'seokey-metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'seokey-metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'seokey-main-keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'seokey-main-keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'seokey-main-keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'seokey-main-keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'seokey_issue_discard'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'seokey_issue_discard'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'seokey_issue_discard'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'seokey_issue_discard'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'seokey_cache_wizard_pre_update_option'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'seokey_cache_wizard_pre_update_option'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'seokey_cache_wizard_pre_update_option'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'seokey_cache_wizard_pre_update_option'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_primary_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_primary_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_primary_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_primary_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seopress_robots_primary_cat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seopress_robots_primary_cat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seopress_robots_primary_cat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seopress_robots_primary_cat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_primary_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_primary_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_primary_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_primary_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seopress_analysis_target_kw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seopress_analysis_target_kw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seopress_analysis_target_kw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seopress_analysis_target_kw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seopress_titles_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seopress_titles_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seopress_titles_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seopress_titles_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seopress_titles_desc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seopress_titles_desc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seopress_titles_desc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seopress_titles_desc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seopress_robots_index'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seopress_robots_index'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seopress_robots_index'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seopress_robots_index'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpseo_noindex_author'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpseo_noindex_author'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpseo_noindex_author'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpseo_noindex_author'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pingme'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pingme'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pingme'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pingme'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_encloseme'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_encloseme'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_encloseme'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_encloseme'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_trackbackme'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_trackbackme'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_trackbackme'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_trackbackme'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'seokey-sitemap-lastmod'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'seokey-sitemap-lastmod'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'seokey-sitemap-lastmod'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'seokey-sitemap-lastmod'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'seokey_usermetas'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'seokey_usermetas'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'seokey_usermetas'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'seokey_usermetas'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_seokey_notice_check_other_plugins'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_seokey_notice_check_other_plugins'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_seokey_notice_check_other_plugins'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_seokey_notice_check_other_plugins'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
