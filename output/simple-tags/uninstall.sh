#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tmp_auto_terms_st'
wp option delete 'taxopress_autoterms_content'
wp option delete 'taxopress_autolinks'
wp option delete 'taxopress_default_autolinks'
wp option delete 'taxopress_autolink_ids_increament'
wp option delete 'taxopress_autoterms'
wp option delete 'taxopress_autoterms_schedule'
wp option delete 'taxopress_autoterms_logs_disabled'
wp option delete 'taxopress_auto_terms_logs_limit'
wp option delete 'taxopress_default_autoterms'
wp option delete 'taxopress_autoterm_ids_increament'
wp option delete 'taxopress_external_taxonomies'
wp option delete 'add-terms_taxo'
wp option delete 'add-terms_cpt'
wp option delete 'remove-terms_taxo'
wp option delete 'remove-terms_cpt'
wp option delete 'rename-terms_taxo'
wp option delete 'rename-terms_cpt'
wp option delete 'merge-terms_taxo'
wp option delete 'merge-terms_cpt'
wp option delete 'delete-unuused-terms_taxo'
wp option delete 'delete-unuused-terms_cpt'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-version'"
wp option delete 'taxopress_3_23_0_upgrade_completed'
wp option delete 'taxopress_3_28_0_upgrade_completed'
wp option delete 'taxopress_activate'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'taxopress_term_order_%'"
wp option delete 'taxopress_suggestterms'
wp option delete 'taxopress_ai_post_terms_tab_label'
wp option delete 'taxopress_ai_existing_terms_tab_label'
wp option delete 'taxopress_ai_suggest_local_terms_tab_label'
wp option delete 'taxopress_ai_create_terms_tab_label'
wp option delete 'taxopress_posttagss'
wp option delete 'taxopress_default_posttagss'
wp option delete 'taxopress_posttags_ids_increament'
wp option delete 'taxopress_relatedposts'
wp option delete 'taxopress_default_relatedposts'
wp option delete 'taxopress_relatedpost_ids_increament'
wp option delete 'taxopress_tagclouds'
wp option delete 'taxopress_default_tagclouds'
wp option delete 'taxopress_tagcloud_ids_increament'
wp option delete 'taxopress_taxonomies'
wp option delete 'taxopress_media_tag_deleted'
wp option delete 'taxopress_deactivated_taxonomies'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'default_term_%'"
wp option delete 'migrate_taxopress_ai_legacy_api'
wp option delete 'taxopress_reviews_installed_on'
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_taxopress_hidden_terms_%' OR option_name LIKE '_site_transient_taxopress_hidden_terms_%'"
wp transient delete 'taxopress_flush_rewrite_rules'

# Clear Cron Jobs
wp cron event delete 'taxopress_cron_autoterms_weekly'
wp cron event delete 'taxopress_update_hidden_terms_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_taxopress_autotermed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_taxopress_autotermed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_taxopress_autotermed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_taxopress_autotermed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_taxopress_log_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_taxopress_log_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_taxopress_log_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_taxopress_log_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_taxopress_log_taxonomy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_taxopress_log_taxonomy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_taxopress_log_taxonomy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_taxopress_log_taxonomy'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_taxopress_log_action'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_taxopress_log_action'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_taxopress_log_action'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_taxopress_log_action'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_taxopress_log_terms'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_taxopress_log_terms'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_taxopress_log_terms'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_taxopress_log_terms'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_taxopress_log_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_taxopress_log_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_taxopress_log_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_taxopress_log_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_taxopress_log_status_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_taxopress_log_status_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_taxopress_log_status_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_taxopress_log_status_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_exclude_autotags'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_exclude_autotags'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_exclude_autotags'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_exclude_autotags'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_exclude_autolinks'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_exclude_autolinks'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_exclude_autolinks'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_exclude_autolinks'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'taxopress_custom_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'taxopress_custom_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'taxopress_custom_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'taxopress_custom_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_taxopress_log_post_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_taxopress_log_post_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_taxopress_log_post_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_taxopress_log_post_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_taxopress_log_component'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_taxopress_log_component'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_taxopress_log_component'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_taxopress_log_component'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_taxopress_log_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_taxopress_log_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_taxopress_log_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_taxopress_log_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_taxopress_log_option_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_taxopress_log_option_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_taxopress_log_option_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_taxopress_log_option_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_taxopress_term_synonyms'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_taxopress_term_synonyms'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_taxopress_term_synonyms'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_taxopress_term_synonyms'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_taxopress_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_taxopress_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_taxopress_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_taxopress_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_taxopress_reviews_last_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_taxopress_reviews_last_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_taxopress_reviews_last_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_taxopress_reviews_last_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_taxopress_reviews_already_did'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_taxopress_reviews_already_did'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_taxopress_reviews_already_did'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_taxopress_reviews_already_did'"
