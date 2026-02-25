-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('show_xapi_content', 'xapi_content', 'earned_mark_percent');
DELETE FROM wp_usermeta WHERE meta_key IN ('show_xapi_content', 'xapi_content', 'earned_mark_percent');
DELETE FROM wp_termmeta WHERE meta_key IN ('show_xapi_content', 'xapi_content', 'earned_mark_percent');
DELETE FROM wp_commentmeta WHERE meta_key IN ('show_xapi_content', 'xapi_content', 'earned_mark_percent');

