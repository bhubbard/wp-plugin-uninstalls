-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nafu_rowcount', 'nafu_saveRows', 'nafu_saveClasses', 'nafu_saveContents', 'nafu_slatheight', 'nafu_slatwidth', 'nafu_slatspacing', 'nafu_fontsize', 'nafu_showtooltip', 'nafu_layouttype');
DELETE FROM wp_options WHERE option_name LIKE 'browser_%';

