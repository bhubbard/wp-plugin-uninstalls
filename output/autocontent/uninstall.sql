-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('autocontent_activation_status', 'autocontent_activation_key', 'autocontent_credits', 'autocontent_frequency', 'autocontent_setup_completed', 'autocontent_redirect_to_setup', 'autocontent_featured_image', 'autocontent_subject', 'autocontent_tone', 'autocontent_post_image', 'autocontent_image_style', 'autocontent_backlink', 'autocontent_affiliate_link', 'autocontent_affliate_link', 'autocontent_keyword_1', 'autocontent_keyword_2', 'autocontent_keyword_3', 'autocontent_keyword_4', 'autocontent_keyword_5', 'autocontent_keywords', 'autocontent_image_type');
DELETE FROM wp_options WHERE option_name LIKE 'autocontent_keyword_%';

