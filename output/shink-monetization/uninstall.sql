-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shink_plugins_option_enabled', 'shink_plugins_option_id', 'shink_plugins_option_domain', 'shink_plugins_option_website_entry_enabled', 'shink_plugins_option_include_exclude_domains_choose', 'shink_plugins_option_include_exclude_domains_value', 'shink_plugins_option_exclude_roles');

