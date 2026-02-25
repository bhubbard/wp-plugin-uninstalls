-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sbp_activation_defaults', 'sbp_activation_redirect', 'sbp_public_post_types', 'sbp_migrator_version', 'sbp_settings', 'sbp_options', 'sbp_preboost', 'sbp_js_footer_exceptions', 'sbp_css_exceptions', 'sbp_js_exceptions', 'sbp_js_footer_exceptions1', 'sbp_js_footer_exceptions2', 'sbp_js_footer_exceptions3', 'sbp_js_footer_exceptions4', 'sbp_lazyload_exclusions', 'sbp_defer_exceptions1', 'sbp_defer_exceptions2', 'sbp_defer_exceptions3', 'sbp_defer_exceptions4', 'active_sitewide_plugins', 'woocommerce_analytics_enabled', 'woocommerce_allow_tracking', 'sbp_notice_error', 'sbp_transient_error', 'sbp_announcements', 'sbp_warmup_started', 'sbp_warmup_process', 'sbp_notice_cache', 'sbp_wp_config_error', 'sbp_advanced_cache_error', 'sbp_do_not_update_cloudflare', 'sbp_notice_cloudflare', 'sbp_notice_tracker_localizer', 'sbp_migrated_from_legacy', 'sbp_options_migrated', 'sbp_sucuri_status', 'sbp_sucuri_error', 'sbp_clear_sucuri_cache', 'sbp_cloudflare_status', 'sbp_upgraded_notice', 'sbp_warmup_errors', 'sbp_warmup_completed');
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sbp_dismissed_compat_notices', 'sbp_newsletter_display_time', 'sbp_hide_newsletter_pointer', 'sbp_dismissed_notices', 'sbp_post_meta', 'sbp_tweet_notice_display_time', 'sbp_rate_wp_org_notice_display_time', 'sbp_dismissed_messages', 'sbp_intro');
DELETE FROM wp_usermeta WHERE meta_key IN ('sbp_dismissed_compat_notices', 'sbp_newsletter_display_time', 'sbp_hide_newsletter_pointer', 'sbp_dismissed_notices', 'sbp_post_meta', 'sbp_tweet_notice_display_time', 'sbp_rate_wp_org_notice_display_time', 'sbp_dismissed_messages', 'sbp_intro');
DELETE FROM wp_termmeta WHERE meta_key IN ('sbp_dismissed_compat_notices', 'sbp_newsletter_display_time', 'sbp_hide_newsletter_pointer', 'sbp_dismissed_notices', 'sbp_post_meta', 'sbp_tweet_notice_display_time', 'sbp_rate_wp_org_notice_display_time', 'sbp_dismissed_messages', 'sbp_intro');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sbp_dismissed_compat_notices', 'sbp_newsletter_display_time', 'sbp_hide_newsletter_pointer', 'sbp_dismissed_notices', 'sbp_post_meta', 'sbp_tweet_notice_display_time', 'sbp_rate_wp_org_notice_display_time', 'sbp_dismissed_messages', 'sbp_intro');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%';

