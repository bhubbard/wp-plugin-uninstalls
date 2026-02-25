-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('intellichat_ai_chatbot_id', 'intellichat_ai_install_time', 'intellichat_ai_review_notice_dismissed', 'intellichat_ai_review_notice_remind');

