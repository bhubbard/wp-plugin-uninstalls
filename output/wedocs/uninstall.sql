-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wedocs_need_sortable_status', 'wedocs_sortable_status', 'wedocs_settings', 'wedocs_upgrader_runner', 'wedocs_admin_footer_text_rated', 'wedocs_migrated_default_parent_doc', 'wedocs_need_migration', 'wedocs_migrated_article_ids', 'wedocs_migrated_categories', 'wedocs_need_reset_documentation_page', 'wedocs_activation_redirect', 'wedocs_installed', 'wedocs_version', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('positive', 'negative', 'wedocs_contributors', 'wedocs_response', '_docs_order', 'wedocs_hide_pro_notice', 'wedocs_hide_beta_notice', 'skip_sidebar');
DELETE FROM wp_usermeta WHERE meta_key IN ('positive', 'negative', 'wedocs_contributors', 'wedocs_response', '_docs_order', 'wedocs_hide_pro_notice', 'wedocs_hide_beta_notice', 'skip_sidebar');
DELETE FROM wp_termmeta WHERE meta_key IN ('positive', 'negative', 'wedocs_contributors', 'wedocs_response', '_docs_order', 'wedocs_hide_pro_notice', 'wedocs_hide_beta_notice', 'skip_sidebar');
DELETE FROM wp_commentmeta WHERE meta_key IN ('positive', 'negative', 'wedocs_contributors', 'wedocs_response', '_docs_order', 'wedocs_hide_pro_notice', 'wedocs_hide_beta_notice', 'skip_sidebar');

