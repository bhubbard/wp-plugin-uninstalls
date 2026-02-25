-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('logout_redirect_type', 'logout_redirect_customise_url');

