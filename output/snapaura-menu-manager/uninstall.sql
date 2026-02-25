-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_mvc_logged_in_only', '_mvc_logged_out_only', '_mvc_role_administrator', '_mvc_role_editor', '_mvc_role_author', '_mvc_role_contributor', '_mvc_role_subscriber', '_mvc_hide_on_mobile', '_mvc_hide_on_tablet', '_mvc_hide_on_desktop', '_mvc_hide_on_current_page');
DELETE FROM wp_usermeta WHERE meta_key IN ('_mvc_logged_in_only', '_mvc_logged_out_only', '_mvc_role_administrator', '_mvc_role_editor', '_mvc_role_author', '_mvc_role_contributor', '_mvc_role_subscriber', '_mvc_hide_on_mobile', '_mvc_hide_on_tablet', '_mvc_hide_on_desktop', '_mvc_hide_on_current_page');
DELETE FROM wp_termmeta WHERE meta_key IN ('_mvc_logged_in_only', '_mvc_logged_out_only', '_mvc_role_administrator', '_mvc_role_editor', '_mvc_role_author', '_mvc_role_contributor', '_mvc_role_subscriber', '_mvc_hide_on_mobile', '_mvc_hide_on_tablet', '_mvc_hide_on_desktop', '_mvc_hide_on_current_page');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_mvc_logged_in_only', '_mvc_logged_out_only', '_mvc_role_administrator', '_mvc_role_editor', '_mvc_role_author', '_mvc_role_contributor', '_mvc_role_subscriber', '_mvc_hide_on_mobile', '_mvc_hide_on_tablet', '_mvc_hide_on_desktop', '_mvc_hide_on_current_page');

