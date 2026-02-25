-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('autowp_settings', 'autowp_show_setup', 'autowp_linking_settings', 'autowp_post_settings', 'autowp_alerts', 'autowp_announcements', 'autowp_dismissed_announcements', 'autowp_rewriting_promptscheme', 'autowp_writing_promptscheme');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_faq_schema', 'managetoplevel_page_list_tablecolumnshidden');
DELETE FROM wp_usermeta WHERE meta_key IN ('_faq_schema', 'managetoplevel_page_list_tablecolumnshidden');
DELETE FROM wp_termmeta WHERE meta_key IN ('_faq_schema', 'managetoplevel_page_list_tablecolumnshidden');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_faq_schema', 'managetoplevel_page_list_tablecolumnshidden');

