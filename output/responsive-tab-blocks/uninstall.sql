-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_grtb_tabs_bg_color', '_gt_tabs_style', '_gt_blocksperline', '_gt_displayinrow', '_gt_show_blocks', '_gt_breakpoint', '_gt_tbg', '_grtb_original_font', '_gt_tab_contents', '_gt_showcontents', '_gt_original_font');
DELETE FROM wp_usermeta WHERE meta_key IN ('_grtb_tabs_bg_color', '_gt_tabs_style', '_gt_blocksperline', '_gt_displayinrow', '_gt_show_blocks', '_gt_breakpoint', '_gt_tbg', '_grtb_original_font', '_gt_tab_contents', '_gt_showcontents', '_gt_original_font');
DELETE FROM wp_termmeta WHERE meta_key IN ('_grtb_tabs_bg_color', '_gt_tabs_style', '_gt_blocksperline', '_gt_displayinrow', '_gt_show_blocks', '_gt_breakpoint', '_gt_tbg', '_grtb_original_font', '_gt_tab_contents', '_gt_showcontents', '_gt_original_font');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_grtb_tabs_bg_color', '_gt_tabs_style', '_gt_blocksperline', '_gt_displayinrow', '_gt_show_blocks', '_gt_breakpoint', '_gt_tbg', '_grtb_original_font', '_gt_tab_contents', '_gt_showcontents', '_gt_original_font');

