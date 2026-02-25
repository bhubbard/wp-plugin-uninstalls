-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('booktuner_update_frequency', 'booktuner_cachepath', 'booktuner_limit', 'booktuner_userid', 'booktuner_shelf', 'booktuner_sort', 'booktuner_sort_order', 'booktuner_display_format', 'booktuner_image_size', 'booktuner_review_length');

