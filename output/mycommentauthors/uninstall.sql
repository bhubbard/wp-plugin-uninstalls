-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mca_mail_limit', 'mca_Mail_From_Name', 'mca_Mail_From_Email', 'mca_gravatar_bg', 'mca_gravatar_border', 'mca_Reserve_List', 'mca_db_version', 'MyCommentAuthors');

