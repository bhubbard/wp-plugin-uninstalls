-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('evcal_options_evcal_1', 'evcal_styles', 'evcal_options_evcal_2', 'evcal_php', '_eventon_create_pages', 'evo_dyn_css', 'evo_data_log', 'eventon_plugin_version', 'eventon_events_page_id', '_evo_needs_update', 'evo_tax_meta', 'evoai_usage_totals', '_evo_activation_redirect', 'eventon_cache_excluded_uris', 'evoai_reset_cooldown');
DELETE FROM wp_options WHERE option_name LIKE 'taxonomy_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_featured', 'evcal_repeat', 'evcal_rep_freq', '_evo_lang', 'repeat_intervals', 'evcal_srow', 'evcal_erow', 'evcal_event_color_n', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_featured', 'evcal_repeat', 'evcal_rep_freq', '_evo_lang', 'repeat_intervals', 'evcal_srow', 'evcal_erow', 'evcal_event_color_n', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_featured', 'evcal_repeat', 'evcal_rep_freq', '_evo_lang', 'repeat_intervals', 'evcal_srow', 'evcal_erow', 'evcal_event_color_n', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_featured', 'evcal_repeat', 'evcal_rep_freq', '_evo_lang', 'repeat_intervals', 'evcal_srow', 'evcal_erow', 'evcal_event_color_n', '_wp_attachment_image_alt');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

