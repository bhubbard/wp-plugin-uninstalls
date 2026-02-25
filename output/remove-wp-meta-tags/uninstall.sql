-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ehf_plugin_dismiss_donate_notice', 'ehf_plugin_no_thanks_donate_notice', 'ehf_plugin_dismissed_time_donate', 'ehf_plugin_installed_time_donate', 'ehf_plugin_dismiss_rating_notice', 'ehf_plugin_no_thanks_rating_notice', 'ehf_plugin_dismissed_time', 'ehf_plugin_installed_time', 'rm_plugin_global_settings', 'ehf-admin-notice-on-activation');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_rm_header_code', '_rm_header_disable', '_rm_footer_code', '_rm_footer_disable', '_rm_body_open_code', '_rm_body_open_disable');
DELETE FROM wp_usermeta WHERE meta_key IN ('_rm_header_code', '_rm_header_disable', '_rm_footer_code', '_rm_footer_disable', '_rm_body_open_code', '_rm_body_open_disable');
DELETE FROM wp_termmeta WHERE meta_key IN ('_rm_header_code', '_rm_header_disable', '_rm_footer_code', '_rm_footer_disable', '_rm_body_open_code', '_rm_body_open_disable');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_rm_header_code', '_rm_header_disable', '_rm_footer_code', '_rm_footer_disable', '_rm_body_open_code', '_rm_body_open_disable');

