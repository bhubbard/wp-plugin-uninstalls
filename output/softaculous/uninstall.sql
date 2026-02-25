-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('softaculous_auth_key', 'wpcentral_version', 'softaculous_connected', 'softaculous_dismiss_notice_date', 'softaculous_promo_time', 'softaculous_allowed_ips', 'softaculous_version', 'softaculous_signonkey', 'softaculous_signonkey_time');

