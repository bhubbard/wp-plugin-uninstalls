-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('marketify_hide_review_notice', 'marketify_marketing_tools_schema', 'marketify_ribbon_schema');
DELETE FROM wp_usermeta WHERE meta_key IN ('marketify_hide_review_notice', 'marketify_marketing_tools_schema', 'marketify_ribbon_schema');
DELETE FROM wp_termmeta WHERE meta_key IN ('marketify_hide_review_notice', 'marketify_marketing_tools_schema', 'marketify_ribbon_schema');
DELETE FROM wp_commentmeta WHERE meta_key IN ('marketify_hide_review_notice', 'marketify_marketing_tools_schema', 'marketify_ribbon_schema');

