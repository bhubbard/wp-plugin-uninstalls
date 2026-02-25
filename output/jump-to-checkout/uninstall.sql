-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jptc_secret_key', 'jptc_rewrite_version', 'jptc_db_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('jptc_upgrade_widget_dismissed', '_jptc_link_id', '_jptc_conversion_counted');
DELETE FROM wp_usermeta WHERE meta_key IN ('jptc_upgrade_widget_dismissed', '_jptc_link_id', '_jptc_conversion_counted');
DELETE FROM wp_termmeta WHERE meta_key IN ('jptc_upgrade_widget_dismissed', '_jptc_link_id', '_jptc_conversion_counted');
DELETE FROM wp_commentmeta WHERE meta_key IN ('jptc_upgrade_widget_dismissed', '_jptc_link_id', '_jptc_conversion_counted');

