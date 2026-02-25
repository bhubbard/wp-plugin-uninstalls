-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wordcounter_counter_position', 'wordcounter_counter_show_word_count', 'wordcounter_counter_show_reading_time', 'wordcounter_counter_show_powered_by');

