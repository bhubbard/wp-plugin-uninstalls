-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_mamurjorcoursenumber_custom_meta_key', '_mamurjorcoursfeedback_custom_meta_key', '_mamurjorlearn_custom_meta_key', '_mamurjorteam_custom_meta_key', '_mamurjorsociallink_custom_meta_key', '_mamurjorsociallinktext_custom_meta_key');
DELETE FROM wp_usermeta WHERE meta_key IN ('_mamurjorcoursenumber_custom_meta_key', '_mamurjorcoursfeedback_custom_meta_key', '_mamurjorlearn_custom_meta_key', '_mamurjorteam_custom_meta_key', '_mamurjorsociallink_custom_meta_key', '_mamurjorsociallinktext_custom_meta_key');
DELETE FROM wp_termmeta WHERE meta_key IN ('_mamurjorcoursenumber_custom_meta_key', '_mamurjorcoursfeedback_custom_meta_key', '_mamurjorlearn_custom_meta_key', '_mamurjorteam_custom_meta_key', '_mamurjorsociallink_custom_meta_key', '_mamurjorsociallinktext_custom_meta_key');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_mamurjorcoursenumber_custom_meta_key', '_mamurjorcoursfeedback_custom_meta_key', '_mamurjorlearn_custom_meta_key', '_mamurjorteam_custom_meta_key', '_mamurjorsociallink_custom_meta_key', '_mamurjorsociallinktext_custom_meta_key');

