-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('slurp_page_installed', 'gf_mijireh_checkout_settings', 'gf_mijireh_checkout_version', 'gf_mijireh_checkout_configured', 'gf_mijireh_checkout_site_name', 'gf_mijireh_checkout_auth_token', 'recently_activated');

