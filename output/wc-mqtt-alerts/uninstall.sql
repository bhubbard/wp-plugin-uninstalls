-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wooshiftrmqtt_shiftr_url', 'wooshiftrmqtt_shiftr_username', 'wooshiftrmqtt_shiftr_password', 'wooshiftrmqtt_shiftr_topic_prefix', 'wooshiftrmqtt_shiftr_retain', 'wooshiftrmqtt_shiftr_qos', 'wooshiftrmqtt_options');

