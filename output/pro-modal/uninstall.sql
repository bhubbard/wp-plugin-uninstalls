-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('Pro_Modal_Meta_Box_Option_Title', 'Pro_Modal_Meta_Box_Option_Style', 'Pro_Modal_Meta_Box_Option_Trigger', 'Pro_Modal_Meta_Box_Option_Trigger_Element', 'Pro_Modal_Meta_Box_Option_Display', 'Pro_Modal_Meta_Box_Option_Cookie');
DELETE FROM wp_usermeta WHERE meta_key IN ('Pro_Modal_Meta_Box_Option_Title', 'Pro_Modal_Meta_Box_Option_Style', 'Pro_Modal_Meta_Box_Option_Trigger', 'Pro_Modal_Meta_Box_Option_Trigger_Element', 'Pro_Modal_Meta_Box_Option_Display', 'Pro_Modal_Meta_Box_Option_Cookie');
DELETE FROM wp_termmeta WHERE meta_key IN ('Pro_Modal_Meta_Box_Option_Title', 'Pro_Modal_Meta_Box_Option_Style', 'Pro_Modal_Meta_Box_Option_Trigger', 'Pro_Modal_Meta_Box_Option_Trigger_Element', 'Pro_Modal_Meta_Box_Option_Display', 'Pro_Modal_Meta_Box_Option_Cookie');
DELETE FROM wp_commentmeta WHERE meta_key IN ('Pro_Modal_Meta_Box_Option_Title', 'Pro_Modal_Meta_Box_Option_Style', 'Pro_Modal_Meta_Box_Option_Trigger', 'Pro_Modal_Meta_Box_Option_Trigger_Element', 'Pro_Modal_Meta_Box_Option_Display', 'Pro_Modal_Meta_Box_Option_Cookie');

