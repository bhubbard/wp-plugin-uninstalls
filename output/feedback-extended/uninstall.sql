-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_feedback_author', '_fe_feedback_replied', '_feedback_author_email', '_feedback_author_url', '_feedback_ip', '_feedback_contact_form_url', '_fe_feedback_replied_content', '_feedback_subject');
DELETE FROM wp_usermeta WHERE meta_key IN ('_feedback_author', '_fe_feedback_replied', '_feedback_author_email', '_feedback_author_url', '_feedback_ip', '_feedback_contact_form_url', '_fe_feedback_replied_content', '_feedback_subject');
DELETE FROM wp_termmeta WHERE meta_key IN ('_feedback_author', '_fe_feedback_replied', '_feedback_author_email', '_feedback_author_url', '_feedback_ip', '_feedback_contact_form_url', '_fe_feedback_replied_content', '_feedback_subject');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_feedback_author', '_fe_feedback_replied', '_feedback_author_email', '_feedback_author_url', '_feedback_ip', '_feedback_contact_form_url', '_fe_feedback_replied_content', '_feedback_subject');

