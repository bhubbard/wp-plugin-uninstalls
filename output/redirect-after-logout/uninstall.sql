-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('redalo_settings', 'redalo_migrated', 'wpral_logout_redirect_url', 'wpral_use_safe_redirect');

