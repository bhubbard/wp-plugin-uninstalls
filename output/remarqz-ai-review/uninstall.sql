-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('remaaire_redirect_url', 'remaaire_activation_redirect_url');

