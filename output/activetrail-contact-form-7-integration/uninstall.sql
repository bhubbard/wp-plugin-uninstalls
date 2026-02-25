-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('formid', 'emailshortcode', 'approvalcheckbox', 'activetraillogin', 'apipassword', 'zeevgroupid');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cf7_activetrail_addon_tag_key', '_cf7_activetrail_addon_tag_key11', '_cf7_activetrail_addon_tag_key22', '_cf7_activetrail_addon_tag_key33', '_cf7_activetrail_addon_tag_key44', '_cf7_activetrail_addon_tag_key55');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cf7_activetrail_addon_tag_key', '_cf7_activetrail_addon_tag_key11', '_cf7_activetrail_addon_tag_key22', '_cf7_activetrail_addon_tag_key33', '_cf7_activetrail_addon_tag_key44', '_cf7_activetrail_addon_tag_key55');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cf7_activetrail_addon_tag_key', '_cf7_activetrail_addon_tag_key11', '_cf7_activetrail_addon_tag_key22', '_cf7_activetrail_addon_tag_key33', '_cf7_activetrail_addon_tag_key44', '_cf7_activetrail_addon_tag_key55');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cf7_activetrail_addon_tag_key', '_cf7_activetrail_addon_tag_key11', '_cf7_activetrail_addon_tag_key22', '_cf7_activetrail_addon_tag_key33', '_cf7_activetrail_addon_tag_key44', '_cf7_activetrail_addon_tag_key55');

