-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sbs_options', 'simple-blog-stats-dismiss-notice', 'sbs_word_count', 'sbs_post_count', 'sbs_page_count', 'sbs_draft_count', 'sbs_user_count', 'sbs_comments_approved_count', 'sbs_comments_moderated_count', 'sbs_comments_total_count', 'sbs_tax_posts_count', 'online_status');

