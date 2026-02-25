-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shariff3uu_basic', 'shariff3uu_design', 'shariff3uu_advanced', 'shariff3uu_statistic', 'shariff3UU', 'shariff3UU_basic', 'shariff3UU_design', 'shariff3UU_advanced', 'shariff3UU_mailform', 'shariff3UU_statistic', 'widget_shariff', 'shariff3UU_hide_update_notice', 'shariff3uu_mailform');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('shariff_metabox_disable', 'shariff_metabox_before', 'shariff_metabox_after', 'shariff_metabox_media', 'shariff_metabox', 'shariff_metabox_ignore_widget', 'shariff3UU_ignore_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('shariff_metabox_disable', 'shariff_metabox_before', 'shariff_metabox_after', 'shariff_metabox_media', 'shariff_metabox', 'shariff_metabox_ignore_widget', 'shariff3UU_ignore_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('shariff_metabox_disable', 'shariff_metabox_before', 'shariff_metabox_after', 'shariff_metabox_media', 'shariff_metabox', 'shariff_metabox_ignore_widget', 'shariff3UU_ignore_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('shariff_metabox_disable', 'shariff_metabox_before', 'shariff_metabox_after', 'shariff_metabox_media', 'shariff_metabox', 'shariff_metabox_ignore_widget', 'shariff3UU_ignore_notice');

