-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('webful_show_consent_notice', 'webful_gdpr_consent', 'webful_show_badge', 'webful_tracking_enabled', 'webful_check_quota', 'webful_exclude_admins', 'webful_excluded_pages', 'webful_gdpr_consent_date', 'webful_site_id', 'webful_api_key', 'webful_site_url', 'webful_user_email', 'webful_version', 'webful_activated_at', 'webful_quota_check');

