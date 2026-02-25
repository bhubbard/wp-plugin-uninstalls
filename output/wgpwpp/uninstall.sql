-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wgpwpp_wp_cache', 'wgpwpp_cdn_cache', 'wgpwpp_rating_dismissed', 'wgpwpp_reports', 'wgpwpp_activation_time', 'wplang', 'site_name');
DELETE FROM wp_options WHERE option_name LIKE '%-flashes';

