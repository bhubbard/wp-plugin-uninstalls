#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'blaminhor_essentials_module_fatal-error-recovery_settings'
wp option delete 'blaminhor_essentials_module_https-redirect_settings'
wp option delete 'blaminhor_essentials_active_modules'
wp option delete 'blaminhor_essentials_options'
wp option delete 'blaminhor_essentials_delete_data'
wp option delete 'blaminhor_essentials_feedback_dismissed'
wp option delete 'blaminhor_essentials_dismissed_pre_restore'
wp option delete 'blaminhor_essentials_broken_links_db_version'
wp option delete 'ap_fer_last_error'
wp option delete 'blaminhor_essentials_fatal-error-recovery_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp option delete 'blaminhor_essentials_pending_redirects'
wp option delete 'blaminhor_essentials_sitemap_rules_flushed'
wp option delete 'blaminhor_essentials_smtp_db_version'
wp option delete 'wp_mail_smtp'
wp option delete 'postman_options'
wp option delete 'swpsmtp_options'
wp option delete 'cron'

# Delete Transients
wp transient delete 'blaminhor_essentials_activation_redirect'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_blaminhor_backup_plan_%' OR option_name LIKE '_site_transient_blaminhor_backup_plan_%'"
wp transient delete 'blaminhor_backup_in_progress'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_blaminhor_essentials_term_old_slug_%' OR option_name LIKE '_site_transient_blaminhor_essentials_term_old_slug_%'"
wp transient delete 'blaminhor_essentials_seo_settings_saved'

# Clear Cron Jobs
wp cron event delete 'blaminhor_essentials_scheduled_backup_db'
wp cron event delete 'blaminhor_essentials_scheduled_backup_files'
wp cron event delete 'ap_db_scheduled_cleanup'
wp cron event delete 'blaminhor_essentials_cleanup_email_logs'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fl_builder_draft_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fl_builder_draft_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fl_builder_draft_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fl_builder_draft_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fl_builder_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fl_builder_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fl_builder_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fl_builder_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_brizy_compiled_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_brizy_compiled_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_brizy_compiled_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_brizy_compiled_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_css_cache'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_css_cache'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_css_cache'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_css_cache'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'blaminhor_menu_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'blaminhor_menu_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'blaminhor_menu_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'blaminhor_menu_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_redirect_rule_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_redirect_rule_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_redirect_rule_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_redirect_rule_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_redirect_rule_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_redirect_rule_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_redirect_rule_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_redirect_rule_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_blaminhor_essentials_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_blaminhor_essentials_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_blaminhor_essentials_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_blaminhor_essentials_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_blaminhor_essentials_noindex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_blaminhor_essentials_noindex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_blaminhor_essentials_noindex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_blaminhor_essentials_noindex'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_blaminhor_essentials_nofollow'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_blaminhor_essentials_nofollow'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_blaminhor_essentials_nofollow'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_blaminhor_essentials_nofollow'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_blaminhor_essentials_noai'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_blaminhor_essentials_noai'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_blaminhor_essentials_noai'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_blaminhor_essentials_noai'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_blaminhor_essentials_seo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_blaminhor_essentials_seo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_blaminhor_essentials_seo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_blaminhor_essentials_seo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_blaminhor_essentials_seo_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_blaminhor_essentials_seo_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_blaminhor_essentials_seo_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_blaminhor_essentials_seo_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_blaminhor_essentials_seo_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_blaminhor_essentials_seo_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_blaminhor_essentials_seo_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_blaminhor_essentials_seo_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_blaminhor_essentials_og_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_blaminhor_essentials_og_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_blaminhor_essentials_og_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_blaminhor_essentials_og_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_blaminhor_essentials_og_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_blaminhor_essentials_og_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_blaminhor_essentials_og_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_blaminhor_essentials_og_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_blaminhor_essentials_og_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_blaminhor_essentials_og_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_blaminhor_essentials_og_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_blaminhor_essentials_og_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_blaminhor_essentials_twitter_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_blaminhor_essentials_twitter_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_blaminhor_essentials_twitter_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_blaminhor_essentials_twitter_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_blaminhor_essentials_twitter_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_blaminhor_essentials_twitter_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_blaminhor_essentials_twitter_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_blaminhor_essentials_twitter_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_blaminhor_essentials_canonical_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_blaminhor_essentials_canonical_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_blaminhor_essentials_canonical_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_blaminhor_essentials_canonical_url'"
