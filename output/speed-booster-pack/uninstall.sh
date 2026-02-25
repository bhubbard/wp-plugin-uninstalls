#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sbp_activation_defaults'
wp option delete 'sbp_activation_redirect'
wp option delete 'sbp_public_post_types'
wp option delete 'sbp_migrator_version'
wp option delete 'sbp_settings'
wp option delete 'sbp_options'
wp option delete 'sbp_preboost'
wp option delete 'sbp_js_footer_exceptions'
wp option delete 'sbp_css_exceptions'
wp option delete 'sbp_js_exceptions'
wp option delete 'sbp_js_footer_exceptions1'
wp option delete 'sbp_js_footer_exceptions2'
wp option delete 'sbp_js_footer_exceptions3'
wp option delete 'sbp_js_footer_exceptions4'
wp option delete 'sbp_lazyload_exclusions'
wp option delete 'sbp_defer_exceptions1'
wp option delete 'sbp_defer_exceptions2'
wp option delete 'sbp_defer_exceptions3'
wp option delete 'sbp_defer_exceptions4'
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_analytics_enabled'
wp option delete 'woocommerce_allow_tracking'
wp option delete 'sbp_notice_error'
wp option delete 'sbp_transient_error'
wp option delete 'sbp_announcements'

# Delete Transients
wp transient delete 'sbp_warmup_started'
wp transient delete 'sbp_warmup_process'
wp transient delete 'sbp_notice_cache'
wp transient delete 'sbp_wp_config_error'
wp transient delete 'sbp_advanced_cache_error'
wp transient delete 'sbp_do_not_update_cloudflare'
wp transient delete 'sbp_notice_cloudflare'
wp transient delete 'sbp_notice_tracker_localizer'
wp transient delete 'sbp_migrated_from_legacy'
wp transient delete 'sbp_options_migrated'
wp transient delete 'sbp_sucuri_status'
wp transient delete 'sbp_sucuri_error'
wp transient delete 'sbp_clear_sucuri_cache'
wp transient delete 'sbp_cloudflare_status'
wp transient delete 'sbp_upgraded_notice'
wp transient delete 'sbp_warmup_errors'
wp transient delete 'sbp_warmup_completed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sbp_dismissed_compat_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sbp_dismissed_compat_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sbp_dismissed_compat_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sbp_dismissed_compat_notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sbp_newsletter_display_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sbp_newsletter_display_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sbp_newsletter_display_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sbp_newsletter_display_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sbp_hide_newsletter_pointer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sbp_hide_newsletter_pointer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sbp_hide_newsletter_pointer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sbp_hide_newsletter_pointer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sbp_dismissed_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sbp_dismissed_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sbp_dismissed_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sbp_dismissed_notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sbp_post_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sbp_post_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sbp_post_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sbp_post_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sbp_tweet_notice_display_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sbp_tweet_notice_display_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sbp_tweet_notice_display_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sbp_tweet_notice_display_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sbp_rate_wp_org_notice_display_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sbp_rate_wp_org_notice_display_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sbp_rate_wp_org_notice_display_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sbp_rate_wp_org_notice_display_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sbp_dismissed_messages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sbp_dismissed_messages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sbp_dismissed_messages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sbp_dismissed_messages'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sbp_intro'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sbp_intro'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sbp_intro'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sbp_intro'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%'"
