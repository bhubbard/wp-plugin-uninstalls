-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hp_reviews_per_page', 'hp_review_default_order', 'hp_review_allow_attachment', 'hp_review_allow_replies', 'hp_installed_time', 'hp_review_allow_anonymous', 'hp_review_criteria', 'hp_review_enable_moderation', 'hp_review_allow_multiple', 'hp_user_enable_display');

