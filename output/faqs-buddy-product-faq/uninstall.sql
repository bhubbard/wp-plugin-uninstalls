-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wfby_plugin_is_activated', 'wfby_main_menu_name_wg');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wfby_faqs_groups', '_wfby_add_faqs_product_des');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wfby_faqs_groups', '_wfby_add_faqs_product_des');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wfby_faqs_groups', '_wfby_add_faqs_product_des');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wfby_faqs_groups', '_wfby_add_faqs_product_des');

