-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smartdlre_timer_seconds', 'smartdlre_ad_code', 'smartdlre_redirect_slug');

