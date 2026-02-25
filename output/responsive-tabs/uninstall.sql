-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_rtbs_tabs_bg_color', '_rtbs_breakpoint', '_rtbs_tbg', '_rtbs_original_font', '_rtbs_tabs_head');
DELETE FROM wp_usermeta WHERE meta_key IN ('_rtbs_tabs_bg_color', '_rtbs_breakpoint', '_rtbs_tbg', '_rtbs_original_font', '_rtbs_tabs_head');
DELETE FROM wp_termmeta WHERE meta_key IN ('_rtbs_tabs_bg_color', '_rtbs_breakpoint', '_rtbs_tbg', '_rtbs_original_font', '_rtbs_tabs_head');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_rtbs_tabs_bg_color', '_rtbs_breakpoint', '_rtbs_tbg', '_rtbs_original_font', '_rtbs_tabs_head');

