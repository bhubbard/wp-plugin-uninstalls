-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('categories-image-id', '_reference_knowledgebase_menu_meta_key', '_reference_knowledgebase_comment_feedback_meta_key', '_reference_knowledgebase_breadcrumbs_meta_key', '_knowledgebase_feedback_ip_meta_key', '_knowledgebase_feedback_confirm_meta_key', '_knowledgebase_feedback_decline_meta_key');
DELETE FROM wp_usermeta WHERE meta_key IN ('categories-image-id', '_reference_knowledgebase_menu_meta_key', '_reference_knowledgebase_comment_feedback_meta_key', '_reference_knowledgebase_breadcrumbs_meta_key', '_knowledgebase_feedback_ip_meta_key', '_knowledgebase_feedback_confirm_meta_key', '_knowledgebase_feedback_decline_meta_key');
DELETE FROM wp_termmeta WHERE meta_key IN ('categories-image-id', '_reference_knowledgebase_menu_meta_key', '_reference_knowledgebase_comment_feedback_meta_key', '_reference_knowledgebase_breadcrumbs_meta_key', '_knowledgebase_feedback_ip_meta_key', '_knowledgebase_feedback_confirm_meta_key', '_knowledgebase_feedback_decline_meta_key');
DELETE FROM wp_commentmeta WHERE meta_key IN ('categories-image-id', '_reference_knowledgebase_menu_meta_key', '_reference_knowledgebase_comment_feedback_meta_key', '_reference_knowledgebase_breadcrumbs_meta_key', '_knowledgebase_feedback_ip_meta_key', '_knowledgebase_feedback_confirm_meta_key', '_knowledgebase_feedback_decline_meta_key');

