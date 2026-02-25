-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rbd-faq-question-color', 'rbd-faq-question-bg', 'rbd-faq-category-color', 'rbd-faq-category-bg', 'rbd-faq-answer-color', 'rbd-faq-answer-bg', 'rbd-faq-icon-color');

