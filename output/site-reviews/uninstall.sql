-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bedrock_autoloader', 'nitropack-autoCachePurge', 'wlpr_settings', 'woocommerce_review_rating_verification_label', 'woocommerce_default_catalog_orderby', 'woocommerce_review_rating_verification_required', 'woocommerce_enable_reviews', 'ic-settings', '_glsr_rebusify', 'sidebars_widgets', 'glsr_trustalyze', '_glsr_trustalyze', 'widget_site-reviews', 'widget_site-reviews-form', 'widget_site-reviews-summary', 'site_reviews', 'glsr_activated', 'glsr_db_version', 'action_scheduler_admin_notice', 'glsr_cloudflare_ips', 'glsr_remote_post_test', 'glsr_system_info', 'glsr_migrations', 'action_scheduler_last_pastdue_actions_check', 'as_comment_count');
DELETE FROM wp_options WHERE option_name LIKE '%db_version';
DELETE FROM wp_options WHERE option_name LIKE '%ip_proxy';
DELETE FROM wp_options WHERE option_name LIKE '%activated';
DELETE FROM wp_options WHERE option_name LIKE '%rollback_version';
DELETE FROM wp_options WHERE option_name LIKE '%rollback_versions';
DELETE FROM wp_options WHERE option_name LIKE '%remote_post_test';
DELETE FROM wp_options WHERE option_name LIKE '%system_info';
DELETE FROM wp_options WHERE option_name LIKE '%gatekeeper';
DELETE FROM wp_options WHERE option_name LIKE '%_cloudflare_ips';
DELETE FROM wp_options WHERE option_name LIKE '%_remote_post_test';
DELETE FROM wp_options WHERE option_name LIKE '%cloudflare_ips';
DELETE FROM wp_options WHERE option_name LIKE '%notices';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('redirect_to', 'dismissed_wp_pointers', '_submitted', '_submitted_hash', '_elementor_data', 'imported', '_verified');
DELETE FROM wp_usermeta WHERE meta_key IN ('redirect_to', 'dismissed_wp_pointers', '_submitted', '_submitted_hash', '_elementor_data', 'imported', '_verified');
DELETE FROM wp_termmeta WHERE meta_key IN ('redirect_to', 'dismissed_wp_pointers', '_submitted', '_submitted_hash', '_elementor_data', 'imported', '_verified');
DELETE FROM wp_commentmeta WHERE meta_key IN ('redirect_to', 'dismissed_wp_pointers', '_submitted', '_submitted_hash', '_elementor_data', 'imported', '_verified');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_filters';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_filters';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_filters';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_filters';

