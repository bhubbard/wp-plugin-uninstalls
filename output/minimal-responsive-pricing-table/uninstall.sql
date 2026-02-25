-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', '_mrpt_layout', '_mrpt_mini_plan_group');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', '_mrpt_layout', '_mrpt_mini_plan_group');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', '_mrpt_layout', '_mrpt_mini_plan_group');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', '_mrpt_layout', '_mrpt_mini_plan_group');

