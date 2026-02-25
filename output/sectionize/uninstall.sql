-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sectionize_id_prefix', 'sectionize_start_section', 'sectionize_end_section', 'sectionize_include_toc_threshold', 'sectionize_before_toc', 'sectionize_after_toc', 'sectionize_disabled');

