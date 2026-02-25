-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wplm_is_email_admin_owner', 'wplm_is_email_owner_after_expire', 'wplm_is_email_admin_after_expire', 'wplm_is_delete_after_expire', 'site_url', 'wplm_expired_email_format_admin', 'wplm_expired_email_format_owner', 'wplm_admin_email', 'wplm_days_before', 'wplm_expiring_email_format_admin', 'wplm_expiring_email_format_owner', 'widget_myHelloWorld', 'widget_mymumbleWorld');

