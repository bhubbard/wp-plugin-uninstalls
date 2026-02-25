-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('geo_capblack_black', 'geo_capblack_legal', 'geo_capblack_comments', 'geo_capblack_registration', 'geo_capblack_log_ips', 'geo_capblack_blocked_spam', 'geo_capblack_not_whitelisted_comments', 'geo_capblack_whitelisted_comments', 'geo_capblack_registered_comments', 'geo_capblack_manuell_spam', 'geo_capblack_whitelisted_spam', 'recently_activated');

