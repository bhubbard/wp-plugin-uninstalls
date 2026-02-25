-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpcpc_policy_page_id', 'wpcpc_policy_top_copy', 'wpcpc_external_policy_page', 'wpcpc_policy_page_link_open_same_tab', 'wpcpc_policy_page_link_types');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpcpc_private_policy_accepted');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpcpc_private_policy_accepted');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpcpc_private_policy_accepted');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpcpc_private_policy_accepted');

