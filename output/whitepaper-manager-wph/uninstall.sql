-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pprwph_options_changed', 'pprwph_form_changed', 'pprwph_options_remove', 'whitepaper-manager-wph', 'pprwph_title', 'pprwph_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pprwph_section_parent_check', 'pprwph_section_parent', 'pprwph_section_publish', 'pprwph_section_link_check', 'pprwph_section_link', 'type');
DELETE FROM wp_usermeta WHERE meta_key IN ('pprwph_section_parent_check', 'pprwph_section_parent', 'pprwph_section_publish', 'pprwph_section_link_check', 'pprwph_section_link', 'type');
DELETE FROM wp_termmeta WHERE meta_key IN ('pprwph_section_parent_check', 'pprwph_section_parent', 'pprwph_section_publish', 'pprwph_section_link_check', 'pprwph_section_link', 'type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pprwph_section_parent_check', 'pprwph_section_parent', 'pprwph_section_publish', 'pprwph_section_link_check', 'pprwph_section_link', 'type');

