-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('revisions_limit_option', 'revisions_limit_activation_redirect');

