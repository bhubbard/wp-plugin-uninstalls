-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('externallinknotice_review_notice_dismissed', 'externallinknotice_activation_date', 'externallinknotice_notice_dismiss_count', 'externallinknotice_user_already_reviewed', 'externallinknotice_user_needs_help', 'external_links_notice_options', 'leaving_notice_popup_options', 'externallinknotice_options', 'externallinknotice_activation');

