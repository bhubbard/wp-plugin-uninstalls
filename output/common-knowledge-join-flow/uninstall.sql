-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('carbon_custom_sidebars');
DELETE FROM wp_options WHERE option_name LIKE 'ck_join_flow_membership_plan_%';
DELETE FROM wp_options WHERE option_name LIKE 'ck_join_flow_webhook_uuid_%';
DELETE FROM wp_options WHERE option_name LIKE 'ck_join_flow_webhook_url_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template');

