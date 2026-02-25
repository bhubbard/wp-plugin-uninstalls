-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('onlistlists', 'onlistadmin', 'onlistinfo', 'onlist_date_plugin_activated');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('onlist_country', 'onlist_address', 'onlist_city', 'onlist_state', 'onlist_zipcode', 'onlist_phone', 'onlist_email', 'onlist_website', 'onlist_other');
DELETE FROM wp_usermeta WHERE meta_key IN ('onlist_country', 'onlist_address', 'onlist_city', 'onlist_state', 'onlist_zipcode', 'onlist_phone', 'onlist_email', 'onlist_website', 'onlist_other');
DELETE FROM wp_termmeta WHERE meta_key IN ('onlist_country', 'onlist_address', 'onlist_city', 'onlist_state', 'onlist_zipcode', 'onlist_phone', 'onlist_email', 'onlist_website', 'onlist_other');
DELETE FROM wp_commentmeta WHERE meta_key IN ('onlist_country', 'onlist_address', 'onlist_city', 'onlist_state', 'onlist_zipcode', 'onlist_phone', 'onlist_email', 'onlist_website', 'onlist_other');

