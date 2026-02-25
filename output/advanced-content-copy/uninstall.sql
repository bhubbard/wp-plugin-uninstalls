-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('advacoco_enabled', 'advacoco_snippet_length', 'advacoco_prefix_text', 'advacoco_suffix_text', 'advacoco_domain_text', 'advacoco_exclude_pages', 'advacoco_min_chars');

