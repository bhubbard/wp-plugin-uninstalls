-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('growthstack_lianamailer_status', 'growthstack_lianamailer_sites', 'growthstack_lianamailer_site_consents', 'growthstack_lianamailer_customer_properties', 'growthstack_lianamailer_customer');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('lianamailer_enabled', 'lianamailer_site', 'lianamailer_mailing_lists', 'lianamailer_properties', 'lianamailer_plugin_site_consents');
DELETE FROM wp_usermeta WHERE meta_key IN ('lianamailer_enabled', 'lianamailer_site', 'lianamailer_mailing_lists', 'lianamailer_properties', 'lianamailer_plugin_site_consents');
DELETE FROM wp_termmeta WHERE meta_key IN ('lianamailer_enabled', 'lianamailer_site', 'lianamailer_mailing_lists', 'lianamailer_properties', 'lianamailer_plugin_site_consents');
DELETE FROM wp_commentmeta WHERE meta_key IN ('lianamailer_enabled', 'lianamailer_site', 'lianamailer_mailing_lists', 'lianamailer_properties', 'lianamailer_plugin_site_consents');

