-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nmfw_notifyme_redirect', 'nmfw_notifyme_connection', 'nmfw_notifyme_notice_dismissed', 'wp_notifyme_nmfw_auth');

