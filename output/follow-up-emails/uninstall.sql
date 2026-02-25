-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('content', 'event', 'trigger', 'type', 'subject', 'managetoplevel_page_follow-up-emailscolumnshidden', 'managetoplevel_page_supporthost_list_tablecolumnshidden', 'auto_status', 'email');
DELETE FROM wp_usermeta WHERE meta_key IN ('content', 'event', 'trigger', 'type', 'subject', 'managetoplevel_page_follow-up-emailscolumnshidden', 'managetoplevel_page_supporthost_list_tablecolumnshidden', 'auto_status', 'email');
DELETE FROM wp_termmeta WHERE meta_key IN ('content', 'event', 'trigger', 'type', 'subject', 'managetoplevel_page_follow-up-emailscolumnshidden', 'managetoplevel_page_supporthost_list_tablecolumnshidden', 'auto_status', 'email');
DELETE FROM wp_commentmeta WHERE meta_key IN ('content', 'event', 'trigger', 'type', 'subject', 'managetoplevel_page_follow-up-emailscolumnshidden', 'managetoplevel_page_supporthost_list_tablecolumnshidden', 'auto_status', 'email');

