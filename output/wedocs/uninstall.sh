#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wedocs_need_sortable_status'
wp option delete 'wedocs_sortable_status'
wp option delete 'wedocs_settings'
wp option delete 'wedocs_upgrader_runner'
wp option delete 'wedocs_admin_footer_text_rated'
wp option delete 'wedocs_migrated_default_parent_doc'
wp option delete 'wedocs_need_migration'
wp option delete 'wedocs_migrated_article_ids'
wp option delete 'wedocs_migrated_categories'
wp option delete 'wedocs_need_reset_documentation_page'
wp option delete 'wedocs_activation_redirect'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp option delete 'wedocs_installed'
wp option delete 'wedocs_version'

# Delete Transients
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'positive'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'positive'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'positive'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'positive'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'negative'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'negative'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'negative'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'negative'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wedocs_contributors'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wedocs_contributors'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wedocs_contributors'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wedocs_contributors'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wedocs_response'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wedocs_response'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wedocs_response'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wedocs_response'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_docs_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_docs_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_docs_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_docs_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wedocs_hide_pro_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wedocs_hide_pro_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wedocs_hide_pro_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wedocs_hide_pro_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wedocs_hide_beta_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wedocs_hide_beta_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wedocs_hide_beta_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wedocs_hide_beta_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'skip_sidebar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'skip_sidebar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'skip_sidebar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'skip_sidebar'"
