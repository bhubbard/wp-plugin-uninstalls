-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lianamailer_contactform7_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('lianamailer_plugin_enabled', 'lianamailer_plugin_mailing_lists', 'lianamailer_plugin_site_consents', 'lianamailer_plugin_account_sites');
DELETE FROM wp_usermeta WHERE meta_key IN ('lianamailer_plugin_enabled', 'lianamailer_plugin_mailing_lists', 'lianamailer_plugin_site_consents', 'lianamailer_plugin_account_sites');
DELETE FROM wp_termmeta WHERE meta_key IN ('lianamailer_plugin_enabled', 'lianamailer_plugin_mailing_lists', 'lianamailer_plugin_site_consents', 'lianamailer_plugin_account_sites');
DELETE FROM wp_commentmeta WHERE meta_key IN ('lianamailer_plugin_enabled', 'lianamailer_plugin_mailing_lists', 'lianamailer_plugin_site_consents', 'lianamailer_plugin_account_sites');

