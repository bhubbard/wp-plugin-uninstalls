-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('spinupwp_mail_notice_dismissed', 'spinupwp_redis_cache_disabled', 'spinupwp_redis_cache_disabled_notice_dismissed');

