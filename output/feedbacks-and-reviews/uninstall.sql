-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', 'paky_feedback_submitted_author_name', 'paky_feedback_submitted_author_email', 'paky_feedback_admin_reply');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', 'paky_feedback_submitted_author_name', 'paky_feedback_submitted_author_email', 'paky_feedback_admin_reply');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', 'paky_feedback_submitted_author_name', 'paky_feedback_submitted_author_email', 'paky_feedback_admin_reply');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', 'paky_feedback_submitted_author_name', 'paky_feedback_submitted_author_email', 'paky_feedback_admin_reply');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'paky_feedback_star_rating_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'paky_feedback_star_rating_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'paky_feedback_star_rating_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'paky_feedback_star_rating_%';

