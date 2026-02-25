-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sam_reading_time_words_per_minute', 'sam_reading_time_singular_format', 'sam_reading_time_plural_format', 'sam_reading_time_less_than_a_minute_format', 'sam_reading_time_prefix_text', 'sam_reading_time_suffix_text', 'sam_reading_time_wrapper_tag', 'sam_reading_time_hide_if_less_than_a_minute', 'sam_reading_time_enable_debug_output', 'sam_reading_time_enable_schema_time_required');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sam_reading_time_minutes');
DELETE FROM wp_usermeta WHERE meta_key IN ('sam_reading_time_minutes');
DELETE FROM wp_termmeta WHERE meta_key IN ('sam_reading_time_minutes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sam_reading_time_minutes');

