-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('reCaptchaProtectedDownloads_settings', 'active_sitewide_plugins');

