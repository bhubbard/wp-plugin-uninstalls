-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('googleplacesreviews_options', 'gpr_widget_version', 'gpr_refid_upgraded', 'widget_gpr_widget', 'gpr_doing_upgrade');
DELETE FROM wp_options WHERE option_name LIKE 'gpr_widget_api_%';
DELETE FROM wp_options WHERE option_name LIKE 'gpr_widget_options_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('gpr_activation_ignore_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('gpr_activation_ignore_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('gpr_activation_ignore_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('gpr_activation_ignore_notice');

