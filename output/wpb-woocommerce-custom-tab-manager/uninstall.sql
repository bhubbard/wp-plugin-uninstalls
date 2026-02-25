-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpb_wctm_priority', 'wpb_wctm_active_tab', 'wpb_wctm_pro_discount_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpb_wctm_priority', 'wpb_wctm_active_tab', 'wpb_wctm_pro_discount_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpb_wctm_priority', 'wpb_wctm_active_tab', 'wpb_wctm_pro_discount_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpb_wctm_priority', 'wpb_wctm_active_tab', 'wpb_wctm_pro_discount_dismissed');

