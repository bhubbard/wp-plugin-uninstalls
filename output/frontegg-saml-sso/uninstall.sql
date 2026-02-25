-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('frontegg_saml_settings', 'frontegg_saml_version', 'frontegg_saml_updated_notice');

