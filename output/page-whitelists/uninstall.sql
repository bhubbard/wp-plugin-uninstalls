-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wlist_settings', 'wlist_list_table', 'wlist_list_page_table', 'wlist_plugin_title');

